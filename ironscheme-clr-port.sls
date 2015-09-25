(library (ironscheme-clr-port)
  (export define-method-port
          define-field-port
          define-syntax
          lambda
          define
          syntax-case
          syntax
          clr-new
          clr-is)
  (import (ironscheme)
          (ironscheme clr)
          (ironscheme syntax)
          (only (srfi :1) iota)
          (rnrs))


  
  (define cast-to-ironscheme-runtime
    (let ([->int (lambda (v) (clr-static-call System.Convert ToInt32 v))]
          [->float (lambda (v) (clr-static-call System.Convert ToDouble v))]
          [ht (make-eqv-hashtable)]
          [gettype (lambda (n) (clr-static-call System.Type GetType n))])
      (for-each
       (lambda (l) (hashtable-set! ht (gettype (car l)) (cadr l)))
       `(("System.Byte" ,->int)
         ("System.SByte" ,->int)
         ("System.Int16" ,->int)
         ("System.UInt16" ,->int)
         ("System.UInt32" ,->int)
         ("System.Single" ,->float)))
      (lambda (val)
        (let* ([t (clr-call System.Object GetType val)]
               [fn (hashtable-ref ht t '())])
          (if (null? fn) val (fn val))))))

  (define-syntax macro-debug-print
    (lambda (e)
      (syntax-case e ()
        [(_ f a ...)
         (begin
           (display (string-append (apply format (syntax->datum #'f) (syntax->datum #'(a ...))) "\n"))
           #'(begin #f))])))

  #;(define-syntax trace
    (lambda (e)
      (syntax-case e ()
        [(_ v)
         #'(begin
             (display (format "trace: ~a"
                              (call-with-string-output-port
                               (lambda (op)
                                 (pretty-print (syntax->datum v) op)))))
             v)])))
  (define-syntax trace
    (lambda (e)
      (syntax-case e ()
        [(_ v) #'(begin #f)])))

  
  (define-syntax define-method-port
    (lambda (e)
      (define (type-and-namespace type ns)
        (if (zero? (string-length ns))
            type
            (string-append ns "." type)))
      (define get-type
        (case-lambda
         [(name)
          (get-type name '())]
         [(name ns)
          (or (exists
               (lambda (ns)
                 (let ((t (clr-static-call IronScheme.Runtime.Helpers GetTypeFast (type-and-namespace name ns))))
                   (if (null? t) #f t)))
               (cons "" ns))
              (assertion-violation 'get-type "type not found" name ns))]
         [(name ns . args)
          (let* ((gt  args)
                 (len (length gt))
                 (t   (get-type (string-append name "`" (number->string len)) ns)))
            (clr-call Type (MakeGenericType Type[]) t (list->vector gt)))]))
      (let* ([dummy #f]
             [len-syn #'len]
             [origargs-syn #'origargs]
             [args-syn #'args]
             ;;[get-type (lambda (s) (clr-static-call System.Type GetType (if (symbol? s) (symbol->string s) s)))]
             [get-type (lambda (s) (get-type (format "~a" s)))]
             [is-enumtype? (lambda (s) (clr-prop-get System.Type IsEnum (get-type s)))]
             [get-syntax (lambda (n) (syntax-format "p-~a" #'dummy n))]
             [get-syntax-list (lambda (n) (map get-syntax (iota n)))]
             [make-pred
              (lambda (syms checklength?)
                (let loop ([preds #'()]
                           [syms syms]
                           [n 0])
                  (with-syntax ([pred-s preds])
                    (syntax-case syms ()
                      [()
                       (with-syntax ([len len-syn]
                                     [n-s n])
                         (if checklength?
                             #'(and (eq? n-s len) . pred-s)
                             #'pred-s))]
                      [(a . rest)
                       (let ([t (format "~a" (syntax->datum #'a))])
                         (with-syntax ([v (get-syntax n)])
                           (cond
                            #;[(eqv? t "System.Object")
                             (loop #'pred-s #'rest (+ n 1))]
                            #;[(eqv? t "System.String")
                             (loop #'((string? v) . pred-s) #'rest (+ n 1))]
                            [(is-enumtype? t)
                             (loop #'((or (pair? v) (symbol? v)) . pred-s) #'rest (+ n 1))]
                            [else
                             (loop #'((clr-is a v) . pred-s) #'rest (+ n 1))])))]))))]
             [make-argslist
              (lambda (n)
                (with-syntax ([len len-syn]
                              [args-symbol args-syn])
                  (let loop ([idx (- n 1)]
                             [s #'()])
                    (cond
                     [(> 0 idx)
                      s]
                     [else
                      (with-syntax ([s-s s]
                                    [sym (get-syntax idx)])
                        (loop (- idx 1)
                              #'([sym (if (pair? args-symbol)
                                          (let ([a (car args-symbol)])
                                            (set! len (+ len 1))
                                            (set! args-symbol (cdr args-symbol))
                                            a)
                                          #f)] . s-s)))]))))]
             [syntax-cast-to-ironscheme-type
              (lambda (t e)
                (with-syntax ([s e])
                  (case t
                    [(System.Single)
                     #'(clr-static-call System.Convert ToDouble s)]
                    [(System.Byte
                      System.SByte
                      System.Int16
                      System.UInt16
                      System.UInt32)
                     #'(clr-static-call System.Convert ToInt32 s)]
                    [else
                     #'s])))])
        (with-syntax ([len len-syn]
                      [origargs-symbol origargs-syn]
                      [args-symbol args-syn])
          (syntax-case e (static:)
            [(k name type func (static: rettype . args))
             (with-syntax ([ps (get-syntax-list (length (syntax->datum #'args)))]
                           [pred (make-pred #'args #f)])
               (with-syntax ([expr (syntax-cast-to-ironscheme-type (syntax->datum #'rettype)
                                                                   #'(clr-static-call type (func . args) . ps))])
                 #'(define (name . ps)
                     (unless pred (assertion-violation 'name "argument types are not matched" (list . ps)))
                     expr)))]
            [(k name type func (rettype . args))
             (with-syntax ([ps (get-syntax-list (+ 1 (length (syntax->datum #'args))))]
                           [pred (make-pred #'(type . args) #f)])
               (with-syntax ([expr (syntax-cast-to-ironscheme-type (syntax->datum #'rettype)
                                                                   #'(clr-call type (func . args) . ps))])
                 #'(define (name . ps)
                     (unless pred (assertion-violation 'name "argument types are not matched" (list . ps)))
                     expr)))]
            [(k name type func decl1 decl2 . decls)
             (let loop ([decls #'(decl1 decl2 . decls)]
                        [conds #'((else (assertion-violation 'name "argument types are not matched" origargs-symbol len)))]
                        [maxargs 0])
               (with-syntax ([conds-syn conds])
                 (syntax-case decls (static:)
                   [()
                    (let ([argsloader (make-argslist maxargs)])
                      #`(define (name . origargs-symbol)
                          (let* ([len 0]
                                 [args-symbol origargs-symbol]
                                 #,@argsloader)
                            (cond #,@conds))))]
                   [((static: rettype . args) . rest)
                    (let ([l (length (syntax->datum #'args))])
                      (with-syntax ([pred (make-pred #'args #t)]
                                    [args-lst (get-syntax-list l)])
                        (with-syntax ([expr (syntax-cast-to-ironscheme-type (syntax->datum #'rettype)
                                                                            #'(clr-static-call type (func . args) . args-lst))])
                          (loop #'rest
                                #'((pred expr) . conds-syn)
                                (max maxargs l)))))]
                   [((rettype . args) . rest)
                    (let ([l (+ 1 (length (syntax->datum #'args)))])
                      (with-syntax ([pred (make-pred #'(type . args) #t)]
                                    [args-lst (get-syntax-list l)])
                        (with-syntax ([expr (syntax-cast-to-ironscheme-type (syntax->datum #'rettype)
                                                                            #'(clr-call type (func . args) . args-lst))])
                          (loop #'rest
                                #'((pred expr) . conds-syn)
                                (max maxargs l)))))])))]
            [else
             (assertion-violation 'define-method-port "arguments ot matched")])))))


  (define-syntax define-field-port
    (lambda (e)
      (let ([syntax-cast-to-ironscheme-type
             (lambda (t e)
               (with-syntax ([s e])
                 (case t
                   [(System.Single)
                    #'(clr-static-call System.Convert ToDouble s)]
                   [(System.Byte
                     System.SByte
                     System.Int16
                     System.UInt16
                     System.UInt32)
                    #'(clr-static-call System.Convert ToInt32 s)]
                   [else
                    #'s])))])
        (syntax-case e ()
          [(_ get set update attr type name content-type)
           (let* ([attr (syntax->datum #'attr)]
                  [static? (memq 'static: attr)]
                  [property? (memq 'property: attr)]
                  [instance-insert (if static? #'() #'(instance))]
                  [functable `(((,#'clr-field-get ,#'clr-field-set!)
                                (,#'clr-prop-get ,#'clr-prop-set!))
                               ((,#'clr-static-field-get ,#'clr-static-field-set!)
                                (,#'clr-static-prop-get ,#'clr-static-prop-set!)))]
                  [select (lambda (l b) (if b (cadr l) (car l)))]
                  [select3 (lambda (l a b c) (select (select (select l a) b) c))])
             (with-syntax ([getfun (select3 functable static? property? #f)]
                           [setfun (select3 functable static? property? #t)])
               (with-syntax ([getter (syntax-cast-to-ironscheme-type (syntax->datum #'content-type)
                                                                     #`(getfun type name #,@instance-insert))])
                 (let ([getdef (if (syntax->datum #'get)
                                   #`((define (get #,@instance-insert)
                                        getter))
                                   #'())]
                       [setdef (if (syntax->datum #'set)
                                   #`((define (set #,@instance-insert value)
                                        (setfun type name #,@instance-insert value)))
                                   #'())]
                       [updatedef (if (syntax->datum #'update)
                                      #`((define (update #,@instance-insert proc)
                                           (setfun type name #,@instance-insert (proc getter))))
                                      #'())])
                   #`(begin
                       #,@getdef
                       #,@setdef
                       #,@updatedef)))))]))))
  

  
  )

