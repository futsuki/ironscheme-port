(library (system resolve-event-args)
  (export new is? resolve-event-args? name)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.ResolveEventArgs a ...)))))
  (define (is? a) (clr-is System.ResolveEventArgs a))
  (define (resolve-event-args? a) (clr-is System.ResolveEventArgs a))
  (define-field-port
    name
    #f
    #f
    (property:)
    System.ResolveEventArgs
    Name
    System.String))
