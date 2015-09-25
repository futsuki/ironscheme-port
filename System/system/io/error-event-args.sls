(library (system io error-event-args)
  (export new is? error-event-args? get-exception)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.IO.ErrorEventArgs a ...)))))
  (define (is? a) (clr-is System.IO.ErrorEventArgs a))
  (define (error-event-args? a) (clr-is System.IO.ErrorEventArgs a))
  (define-method-port
    get-exception
    System.IO.ErrorEventArgs
    GetException
    (System.Exception)))
