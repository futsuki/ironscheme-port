(library (system data state-change-event-args)
  (export new is? state-change-event-args? current-state original-state)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Data.StateChangeEventArgs a ...)))))
  (define (is? a) (clr-is System.Data.StateChangeEventArgs a))
  (define (state-change-event-args? a)
    (clr-is System.Data.StateChangeEventArgs a))
  (define-field-port
    current-state
    #f
    #f
    (property:)
    System.Data.StateChangeEventArgs
    CurrentState
    System.Data.ConnectionState)
  (define-field-port
    original-state
    #f
    #f
    (property:)
    System.Data.StateChangeEventArgs
    OriginalState
    System.Data.ConnectionState))
