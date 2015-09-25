(library (system component-model handled-event-args)
  (export new
          is?
          handled-event-args?
          handled?-get
          handled?-set!
          handled?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.ComponentModel.HandledEventArgs a ...)))))
  (define (is? a) (clr-is System.ComponentModel.HandledEventArgs a))
  (define (handled-event-args? a)
    (clr-is System.ComponentModel.HandledEventArgs a))
  (define-field-port
    handled?-get
    handled?-set!
    handled?-update!
    (property:)
    System.ComponentModel.HandledEventArgs
    Handled
    System.Boolean))
