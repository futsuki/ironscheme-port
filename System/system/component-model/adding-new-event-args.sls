(library (system component-model adding-new-event-args)
  (export new
          is?
          adding-new-event-args?
          new-object-get
          new-object-set!
          new-object-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.ComponentModel.AddingNewEventArgs a ...)))))
  (define (is? a) (clr-is System.ComponentModel.AddingNewEventArgs a))
  (define (adding-new-event-args? a)
    (clr-is System.ComponentModel.AddingNewEventArgs a))
  (define-field-port
    new-object-get
    new-object-set!
    new-object-update!
    (property:)
    System.ComponentModel.AddingNewEventArgs
    NewObject
    System.Object))
