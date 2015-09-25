(library (system component-model design component-changed-event-args)
  (export new
          is?
          component-changed-event-args?
          component
          member
          new-value
          old-value)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.Design.ComponentChangedEventArgs
             a
             ...)))))
  (define (is? a)
    (clr-is System.ComponentModel.Design.ComponentChangedEventArgs a))
  (define (component-changed-event-args? a)
    (clr-is System.ComponentModel.Design.ComponentChangedEventArgs a))
  (define-field-port
    component
    #f
    #f
    (property:)
    System.ComponentModel.Design.ComponentChangedEventArgs
    Component
    System.Object)
  (define-field-port
    member
    #f
    #f
    (property:)
    System.ComponentModel.Design.ComponentChangedEventArgs
    Member
    System.ComponentModel.MemberDescriptor)
  (define-field-port
    new-value
    #f
    #f
    (property:)
    System.ComponentModel.Design.ComponentChangedEventArgs
    NewValue
    System.Object)
  (define-field-port
    old-value
    #f
    #f
    (property:)
    System.ComponentModel.Design.ComponentChangedEventArgs
    OldValue
    System.Object))
