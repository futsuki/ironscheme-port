(library (system unhandled-exception-event-args)
  (export new
          is?
          unhandled-exception-event-args?
          exception-object
          is-terminating?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.UnhandledExceptionEventArgs a ...)))))
  (define (is? a) (clr-is System.UnhandledExceptionEventArgs a))
  (define (unhandled-exception-event-args? a)
    (clr-is System.UnhandledExceptionEventArgs a))
  (define-field-port
    exception-object
    #f
    #f
    (property:)
    System.UnhandledExceptionEventArgs
    ExceptionObject
    System.Object)
  (define-field-port
    is-terminating?
    #f
    #f
    (property:)
    System.UnhandledExceptionEventArgs
    IsTerminating
    System.Boolean))
