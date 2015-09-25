(library (system component-model reflection-event-descriptor)
  (export new
          is?
          reflection-event-descriptor?
          remove-event-handler
          add-event-handler
          component-type
          event-type
          is-multicast?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.ReflectionEventDescriptor
             a
             ...)))))
  (define (is? a)
    (clr-is System.ComponentModel.ReflectionEventDescriptor a))
  (define (reflection-event-descriptor? a)
    (clr-is System.ComponentModel.ReflectionEventDescriptor a))
  (define-method-port
    remove-event-handler
    System.ComponentModel.ReflectionEventDescriptor
    RemoveEventHandler
    (System.Void System.Object System.Delegate))
  (define-method-port
    add-event-handler
    System.ComponentModel.ReflectionEventDescriptor
    AddEventHandler
    (System.Void System.Object System.Delegate))
  (define-field-port
    component-type
    #f
    #f
    (property:)
    System.ComponentModel.ReflectionEventDescriptor
    ComponentType
    System.Type)
  (define-field-port
    event-type
    #f
    #f
    (property:)
    System.ComponentModel.ReflectionEventDescriptor
    EventType
    System.Type)
  (define-field-port
    is-multicast?
    #f
    #f
    (property:)
    System.ComponentModel.ReflectionEventDescriptor
    IsMulticast
    System.Boolean))
