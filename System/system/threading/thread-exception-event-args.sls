(library (system threading thread-exception-event-args)
  (export new is? thread-exception-event-args? exception)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Threading.ThreadExceptionEventArgs a ...)))))
  (define (is? a) (clr-is System.Threading.ThreadExceptionEventArgs a))
  (define (thread-exception-event-args? a)
    (clr-is System.Threading.ThreadExceptionEventArgs a))
  (define-field-port
    exception
    #f
    #f
    (property:)
    System.Threading.ThreadExceptionEventArgs
    Exception
    System.Exception))
