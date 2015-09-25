(library (make-clr-importer-main)
  (export save-all-assemblies
          save-type
          save-all-types-from-assembly
          )
  (import (make-clr-importer)
          (rnrs)
          (only (ironscheme) format)
          (as-match)
          (only (srfi :1) fold)
          (ironscheme clr)
          (ironscheme strings)
          (srfi private let-opt)
          (ironscheme pretty-print))

  (define (pretty-string o)
    (call-with-string-output-port (lambda (p) (pretty-print o p))))

  (define (save-obj library-obj . option)
    (let-optionals* option ([path-head #f])
      (match library-obj
        [('library path body ...)
         (let* ([pathcombine (lambda (a b) (clr-static-call System.IO.Path Combine a b))]
                [getpathdir (lambda (a) (clr-static-call System.IO.Path GetDirectoryName a))]
                [makedir (lambda (path) (clr-static-call System.IO.Directory CreateDirectory path))]
                [path (fold (lambda (a b) (pathcombine b a)) "" (map symbol->string path))]
                [path (if path-head (pathcombine path-head path) path)]
                [path (string-append (pathcombine "out" path) ".sls")]
                [contents (pretty-string library-obj)]
                [dir (getpathdir path)]
                [writer (lambda (path contents) (clr-static-call System.IO.File WriteAllText path contents))])
           (makedir dir)
           (writer path contents)
           `(,dir ,path))])))

  (define (save-type type . option)
    (guard (ex [#t (display (format "error ~a" ex))])
      (clr-guard (ex [#t (raise ex)])
        (let-optionals* option ([path-head #f])
          (let ([type (if (string? type) (clr-static-call System.Type GetType type) type)])
            (let* ([n (clr-prop-get System.Type FullName type)]
                   [obj (make-clr-importer n #t #f)])
              (save-obj obj path-head)))))))
  
  (define mcd (clr-static-call System.Type GetType "System.MulticastDelegate"))
  (define (is-delegate? t)
    (clr-call System.Type IsAssignableFrom mcd (clr-prop-get System.Type BaseType t)))
  
  (define (save-all-types-from-assembly ass)
    (let* ([types (vector->list (clr-call System.Reflection.Assembly GetTypes ass))]
           [types (filter (lambda (t)
                            (let ([ns (clr-prop-get System.Type FullName t)])
                              (and (string? ns)
                                   (not (is-delegate? t))
                                   (not (string-contains? ns "+"))
                                   (clr-prop-get System.Type IsClass t)
                                   (not (clr-prop-get System.Type IsGenericType t))))) types)]
           [assname (clr-call System.Reflection.Assembly (GetName) ass)]
           [path-head (clr-prop-get System.Reflection.AssemblyName Name assname)])
      (for-each (lambda (e) (save-type e path-head)) types)))

  (define (save-all-assemblies)
    (let* ([domain (clr-static-prop-get System.AppDomain CurrentDomain)]
           [asss (vector->list (clr-call System.AppDomain GetAssemblies domain))])
      (for-each save-all-types-from-assembly asss)))
  



  )
