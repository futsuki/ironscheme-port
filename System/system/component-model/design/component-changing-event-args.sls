(library (system component-model design component-changing-event-args)
  (export new is? component-changing-event-args? component member)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.Design.ComponentChangingEventArgs
             a
             ...)))))
  (define (is? a)
    (clr-is System.ComponentModel.Design.ComponentChangingEventArgs a))
  (define (component-changing-event-args? a)
    (clr-is System.ComponentModel.Design.ComponentChangingEventArgs a))
  (define-field-port
    component
    #f
    #f
    (property:)
    System.ComponentModel.Design.ComponentChangingEventArgs
    Component
    System.Object)
  (define-field-port
    member
    #f
    #f
    (property:)
    System.ComponentModel.Design.ComponentChangingEventArgs
    Member
    System.ComponentModel.MemberDescriptor))
