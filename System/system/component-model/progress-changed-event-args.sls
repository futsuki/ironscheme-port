(library (system component-model progress-changed-event-args)
  (export new
          is?
          progress-changed-event-args?
          progress-percentage
          user-state)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.ProgressChangedEventArgs
             a
             ...)))))
  (define (is? a)
    (clr-is System.ComponentModel.ProgressChangedEventArgs a))
  (define (progress-changed-event-args? a)
    (clr-is System.ComponentModel.ProgressChangedEventArgs a))
  (define-field-port
    progress-percentage
    #f
    #f
    (property:)
    System.ComponentModel.ProgressChangedEventArgs
    ProgressPercentage
    System.Int32)
  (define-field-port
    user-state
    #f
    #f
    (property:)
    System.ComponentModel.ProgressChangedEventArgs
    UserState
    System.Object))
