(library (system component-model design component-event-args)
  (export new is? component-event-args? component)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.Design.ComponentEventArgs
             a
             ...)))))
  (define (is? a)
    (clr-is System.ComponentModel.Design.ComponentEventArgs a))
  (define (component-event-args? a)
    (clr-is System.ComponentModel.Design.ComponentEventArgs a))
  (define-field-port
    component
    #f
    #f
    (property:)
    System.ComponentModel.Design.ComponentEventArgs
    Component
    System.ComponentModel.IComponent))
