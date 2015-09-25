(library (system component-model run-worker-completed-event-args)
  (export new is? run-worker-completed-event-args? result user-state)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.RunWorkerCompletedEventArgs
             a
             ...)))))
  (define (is? a)
    (clr-is System.ComponentModel.RunWorkerCompletedEventArgs a))
  (define (run-worker-completed-event-args? a)
    (clr-is System.ComponentModel.RunWorkerCompletedEventArgs a))
  (define-field-port
    result
    #f
    #f
    (property:)
    System.ComponentModel.RunWorkerCompletedEventArgs
    Result
    System.Object)
  (define-field-port
    user-state
    #f
    #f
    (property:)
    System.ComponentModel.RunWorkerCompletedEventArgs
    UserState
    System.Object))
