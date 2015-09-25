(library (make-clr-importer)
  (export make-clr-importer
          clr-importer-make-all
          proc-method)
  (import (rnrs)
          (ironscheme)
          (ironscheme clr)
          (ironscheme strings)
          (only (srfi :1) iota any every)
          (srfi private let-opt)
          (as-match)
          )

  (clr-using System)
  (clr-using System.Reflection)

  ;; quote from (ironscheme clr dynamic)
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
  ;; end of quote

  (define (symbol-format fmt . args)
    (string->symbol (apply format fmt args)))

  (define (get-name n)
    (cond
     [(clr-is Type n)
      (clr-prop-get Type Name n)]
     [(clr-is MethodInfo n)
      (clr-prop-get MethodInfo Name n)]
     [(clr-is PropertyInfo n)
      (clr-prop-get PropertyInfo Name n)]
     [(clr-is FieldInfo n)
      (clr-prop-get FieldInfo Name n)]
     [else
      (assertion-violation 'get-name "wrong type" n)]))
  (define (get-name-symbol n)
    (format "~a" (get-name n)))
  (define (get-fullname-symbol t)
    (format "~a" (clr-prop-get Type FullName t)))

  (define (identity s) s)
  (define (clr-name->scheme-like s)
    (let-values ([(ip) (open-string-input-port s)]
                 [(op result) (open-string-output-port)])
      (let loop ([prechar-upper? #t]
                 [c (get-char ip)])
        (cond
         [(eof-object? c)
          (result)]
         [(or (eqv? c #\.) (eqv? c #\_))
          (write-char #\- op)
          (loop #t (get-char ip))]
         [else
          (if (and (char-upper-case? c) (not prechar-upper?))
              (write-char #\- op))
          (write-char (char-downcase c) op)
          (loop (char-upper-case? c) (get-char ip))]))))

  (define (symbol-valid-string? s)
    (let ([ip (open-string-input-port s)])
      (let loop ([first #t]
                 [c (read-char ip)])
        (if (eof-object? c)
            #t
            (if (cond
                 [(or (char-numeric? c)
                      (eqv? c #\[)
                      (eqv? c #\]))
                  (not first)]
                 [(char-alphabetic? c) #t]
                 [else (case c
                         [(#\. #\+ #\- #\* #\/ #\$ #\% #\& #\~ #\: #\> #\< #\? #\! #\_ #\^ #\=) #t]
                         [else #f])])
                (loop #f (read-char ip))
                #f)))))

  (define (able->symbol s)
    (if (symbol-valid-string? s)
        (string->symbol s)
        s))

  (define (symbol/string-format s . args)
    (able->symbol (apply format s args)))
  
  (define (cast-to-ironscheme t)
    (case (clr-prop-get Type FullName t)
      [("System.Byte"
        "System.SByte"
        "System.Int16"
        "System.UInt16"
        "System.UInt32")
       (lambda (e) `(clr-cast System.Int32 ,e))]
      [("System.Single")
       (lambda (e) `(clr-cast System.Double ,e))]
      [else
       (lambda (e) e)]))

  (define (null->false e) (if (eq? e '()) #f e))
  
  (define (proc-field-prop type symconv p enforce-syntax?)
    (clr-guard (ex [#t (raise (list 'proc-field-prop type p ex))])
      (let* ([typesym (symbol/string-format "~a" (clr-prop-get Type FullName type))]
             [propsym (symbol/string-format "~a" (get-name p))]
             [field? (clr-is FieldInfo p)]
             [prop-type (if field?
                            (clr-prop-get FieldInfo FieldType p)
                            (clr-prop-get PropertyInfo PropertyType p))]
             [booltype (get-type "System.Boolean")]
             [prop-boolean? (eq? booltype prop-type)]
             [name-sym (symbol/string-format (if prop-boolean? "~a?" "~a") (symconv (get-name p)))]
             [prop-type-sym (symbol/string-format "~a" (clr-prop-get Type FullName prop-type))]
             [canget? (if field?
                          #t
                          (null->false (clr-call PropertyInfo GetGetMethod p)))]
             [canset? (if field?
                          (and (not (clr-prop-get FieldInfo IsInitOnly p))
                               (not (clr-prop-get FieldInfo IsLiteral p)))
                          (null->false (clr-call PropertyInfo GetSetMethod p)))]
             [static? (if field?
                          (clr-prop-get FieldInfo IsStatic p)
                          (clr-prop-get MethodInfo IsStatic
                                        (if canget?
                                            (clr-call PropertyInfo GetGetMethod p)
                                            (clr-call PropertyInfo GetSetMethod p))))]
             [getsym (cond [(and canget? canset?)
                            (symbol/string-format "~a-get" name-sym)]
                           [canget?
                            (symbol/string-format "~a" name-sym)]
                           [else #f])]
             [setsym (cond [(and canget? canset?)
                            (symbol/string-format "~a-set!" name-sym)]
                           [canset?
                            (symbol/string-format "~a" name-sym)]
                           [else #f])]
             [updatesym (if (and canget? canset?) (symbol/string-format "~a-update!" name-sym) #f)]
             [staticinsert (if static? '(static:) '())]
             [propertyinsert (if field? '() '(property:))])
        `((define-field-port ,getsym ,setsym ,updatesym
            ,(append staticinsert propertyinsert)
            ,typesym ,propsym ,prop-type-sym)))))


  (define (proc-method type symconv p enforce-syntax?)
    (let* ([typesym (symbol/string-format "~a" (clr-prop-get Type FullName type))]
           [name (car p)]
           [lst (cdr p)]
           [func-src (symbol/string-format "~a" name)]
           [booltype (get-type "System.Boolean")]
           [all-pred? (every
                       (lambda (m)
                         (eq? booltype (clr-prop-get MethodInfo ReturnType m)))
                       lst)]
           [def-name (symbol/string-format (if all-pred? "~a?" "~a") (symconv name))]
           [overloaded? (< 1 (length lst))]
           [impls
            (map
             (lambda (m)
               (let ([static? (if (clr-prop-get MethodInfo IsStatic m) '(static:) '())]
                     [rettype (symbol/string-format "~a" (clr-prop-get Type FullName (clr-prop-get MethodInfo ReturnType m)))]
                     [argtypes (map
                                (lambda (p)
                                  (symbol/string-format "~a" (clr-prop-get Type FullName
                                                             (clr-prop-get ParameterInfo ParameterType p))))
                                (vector->list (clr-call MethodInfo GetParameters m)))])
                 `(,@static? ,rettype ,@argtypes)))
             (filter
              (lambda (e)
                (and (not (clr-prop-get MethodInfo IsGenericMethod e))
                     (not (clr-prop-get MethodInfo IsGenericMethodDefinition e))
                     (not (any (lambda (e)
                                 (let ([pt (clr-prop-get ParameterInfo ParameterType e)])
                                   (or (clr-prop-get Type IsGenericType pt)
                                       (clr-prop-get Type IsGenericTypeDefinition pt))))
                               (vector->list (clr-call MethodInfo GetParameters e))))))
              lst))])
      `((define-method-port ,def-name ,typesym ,func-src ,@impls))))

  (define (lookup lst keyselector . option)
    (let-optionals* option ([valueselector identity])
      (let ([ht (make-eq-hashtable)])
        (let loop ([lst lst])
          (if (null? lst)
              (hashtable-map ht cons)
              (let* ([head (car lst)]
                     [tail (cdr lst)]
                     [k (keyselector head)]
                     [v (valueselector head)])
                (hashtable-update! ht k (lambda (p) (cons v p)) '())
                (loop tail)))))))

  #;(define-syntax trace
    (lambda (e)
      (syntax-case e ()
        [(_ x)
         #'(begin (unity-log (format "~s:~s" (typeof x) x)) x)])))
  
  (define (clr-importer-make-all type symconv enforce-syntax?)
    (let* ([typename (clr-prop-get Type FullName type)]
           [typesym (symbol/string-format "~a" typename)]
           [issym (symbol/string-format "~a?" (symconv (clr-prop-get Type Name type)))]
           [bindflag '(Public InvokeMethod Instance Static DeclaredOnly)]
           [->int (lambda (x) (clr-static-call System.Convert (ToInt32 Object) (clr-cast Object x)))]
           [varargs-flag (->int (clr-cast System.Reflection.CallingConventions '(VarArgs)))] ; for varargs method removing
           [bit-all-set? (lambda (a b) (eq? b (bitwise-and a b)))]
           [methods (filter (lambda (e)
                              (and (not (clr-prop-get MethodInfo IsSpecialName e))
                                   (not (bit-all-set? (->int (clr-cast System.Reflection.CallingConventions
                                                                       (clr-prop-get MethodInfo CallingConvention e)))
                                                      varargs-flag))))
                            (vector->list (clr-call Type GetMethods type (clr-cast BindingFlags bindflag))))]
           [methods-lu (lookup methods (lambda (e) (clr-prop-get MethodInfo Name e)))]
           [defs (append
                  (if (eq? 0 (vector-length (clr-call Type GetConstructors type (clr-cast BindingFlags bindflag))))
                      '()
                      `((define-syntax new
                          (lambda (e)
                            (syntax-case e ()
                              [(_ a ...)
                               #'(clr-new ,typesym a ...)])))))
                  `((define (is? a)
                      (clr-is ,typesym a)))
                  `((define (,issym a)
                      (clr-is ,typesym a)))
                  (apply append (map (lambda (p) (proc-method type symconv p enforce-syntax?)) methods-lu))
                  (apply append (map (lambda (p) (proc-field-prop type symconv p enforce-syntax?))
                                     (filter (lambda (e) (not (clr-prop-get FieldInfo IsSpecialName e)))
                                             (vector->list (clr-call Type GetFields type (clr-cast BindingFlags bindflag))))))
                  (apply append (map (lambda (p) (proc-field-prop type symconv p enforce-syntax?))
                                     (filter (lambda (e) (and (not (clr-prop-get PropertyInfo IsSpecialName e))
                                                              (not (equal? "Chars" (clr-prop-get PropertyInfo Name e)))))
                                             (vector->list (clr-call Type GetProperties type (clr-cast BindingFlags bindflag)))))))]
           [syms (apply append
                        (map (lambda (l)
                               (match l
                                 [('define (def ps ...) body ...)
                                  (list def)]
                                 [('define def body ...)
                                  (list def)]
                                 [('define-syntax def body ...)
                                  (list def)]
                                 [('define-field-port def1 def2 def3 attr body ...)
                                  (filter (lambda (e) e) (list def1 def2 def3))]
                                 [('define-method-port def body ...)
                                  (list def)]))
                             defs))])
      (list syms defs)))

  
  (define (make-clr-importer type/name . option)
    (let-optionals* option ([scheme-like-name? #t]
                            [enforce-syntax? #f])
      (let* ([symconv (if scheme-like-name? clr-name->scheme-like identity)]
             [type (guard (e [#t #f]) (if (string? type/name) (get-type type/name) type/name))]
             [all (clr-importer-make-all type symconv enforce-syntax?)]
             [fullname (clr-prop-get Type FullName type)]
             [namespace (map (lambda (e) (symbol/string-format "~a" (symconv e))) (vector->list (string-split fullname ".")))])
        `(library (,@namespace)
           (export ,@(car all))
           (import (ironscheme-clr-port))
           ,@(cadr all)
           ))))

  #|
  (import (make-clr-importer))
  (clr-importer-make-all
   (clr-static-call System.Type GetType "UnityEngine.Object, UnityEngine")
   (lambda (e) e)
   #f
  )

  (import (make-clr-importer))
  (unity-log
  (clr-importer-make-all
  (clr-static-call System.Type GetType "UnityEngine.Object, UnityEngine")
  (lambda (e) e)
  #f))

  ;; make all importer
  (import (make-clr-importer-main))
  (save-all-assemblies)

  (import (make-clr-importer-main))
  (save-type "System.String")
  |#
  
  )


