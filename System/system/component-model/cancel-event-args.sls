(library (system component-model cancel-event-args)
  (export new
          is?
          cancel-event-args?
          cancel?-get
          cancel?-set!
          cancel?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.ComponentModel.CancelEventArgs a ...)))))
  (define (is? a) (clr-is System.ComponentModel.CancelEventArgs a))
  (define (cancel-event-args? a)
    (clr-is System.ComponentModel.CancelEventArgs a))
  (define-field-port
    cancel?-get
    cancel?-set!
    cancel?-update!
    (property:)
    System.ComponentModel.CancelEventArgs
    Cancel
    System.Boolean))
