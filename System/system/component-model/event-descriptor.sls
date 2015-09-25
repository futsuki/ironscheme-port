(library (system component-model event-descriptor)
  (export is?
          event-descriptor?
          remove-event-handler
          add-event-handler
          component-type
          event-type
          is-multicast?)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.ComponentModel.EventDescriptor a))
  (define (event-descriptor? a)
    (clr-is System.ComponentModel.EventDescriptor a))
  (define-method-port
    remove-event-handler
    System.ComponentModel.EventDescriptor
    RemoveEventHandler
    (System.Void System.Object System.Delegate))
  (define-method-port
    add-event-handler
    System.ComponentModel.EventDescriptor
    AddEventHandler
    (System.Void System.Object System.Delegate))
  (define-field-port
    component-type
    #f
    #f
    (property:)
    System.ComponentModel.EventDescriptor
    ComponentType
    System.Type)
  (define-field-port
    event-type
    #f
    #f
    (property:)
    System.ComponentModel.EventDescriptor
    EventType
    System.Type)
  (define-field-port
    is-multicast?
    #f
    #f
    (property:)
    System.ComponentModel.EventDescriptor
    IsMulticast
    System.Boolean))
