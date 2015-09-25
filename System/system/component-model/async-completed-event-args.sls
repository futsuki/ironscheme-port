(library (system component-model async-completed-event-args)
  (export new
          is?
          async-completed-event-args?
          cancelled?
          error
          user-state)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.AsyncCompletedEventArgs
             a
             ...)))))
  (define (is? a)
    (clr-is System.ComponentModel.AsyncCompletedEventArgs a))
  (define (async-completed-event-args? a)
    (clr-is System.ComponentModel.AsyncCompletedEventArgs a))
  (define-field-port
    cancelled?
    #f
    #f
    (property:)
    System.ComponentModel.AsyncCompletedEventArgs
    Cancelled
    System.Boolean)
  (define-field-port
    error
    #f
    #f
    (property:)
    System.ComponentModel.AsyncCompletedEventArgs
    Error
    System.Exception)
  (define-field-port
    user-state
    #f
    #f
    (property:)
    System.ComponentModel.AsyncCompletedEventArgs
    UserState
    System.Object))
