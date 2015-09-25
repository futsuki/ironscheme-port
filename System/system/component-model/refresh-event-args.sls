(library (system component-model refresh-event-args)
  (export new is? refresh-event-args? component-changed type-changed)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.ComponentModel.RefreshEventArgs a ...)))))
  (define (is? a) (clr-is System.ComponentModel.RefreshEventArgs a))
  (define (refresh-event-args? a)
    (clr-is System.ComponentModel.RefreshEventArgs a))
  (define-field-port
    component-changed
    #f
    #f
    (property:)
    System.ComponentModel.RefreshEventArgs
    ComponentChanged
    System.Object)
  (define-field-port
    type-changed
    #f
    #f
    (property:)
    System.ComponentModel.RefreshEventArgs
    TypeChanged
    System.Type))
