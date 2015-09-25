(library (system reflection event-info)
  (export is?
          event-info?
          get-remove-method
          get-other-methods
          get-add-method
          remove-event-handler
          get-raise-method
          add-event-handler
          attributes
          event-handler-type
          is-multicast?
          is-special-name?
          member-type)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Reflection.EventInfo a))
  (define (event-info? a) (clr-is System.Reflection.EventInfo a))
  (define-method-port
    get-remove-method
    System.Reflection.EventInfo
    GetRemoveMethod
    (System.Reflection.MethodInfo System.Boolean)
    (System.Reflection.MethodInfo))
  (define-method-port
    get-other-methods
    System.Reflection.EventInfo
    GetOtherMethods
    (System.Reflection.MethodInfo[])
    (System.Reflection.MethodInfo[] System.Boolean))
  (define-method-port
    get-add-method
    System.Reflection.EventInfo
    GetAddMethod
    (System.Reflection.MethodInfo System.Boolean)
    (System.Reflection.MethodInfo))
  (define-method-port
    remove-event-handler
    System.Reflection.EventInfo
    RemoveEventHandler
    (System.Void System.Object System.Delegate))
  (define-method-port
    get-raise-method
    System.Reflection.EventInfo
    GetRaiseMethod
    (System.Reflection.MethodInfo System.Boolean)
    (System.Reflection.MethodInfo))
  (define-method-port
    add-event-handler
    System.Reflection.EventInfo
    AddEventHandler
    (System.Void System.Object System.Delegate))
  (define-field-port
    attributes
    #f
    #f
    (property:)
    System.Reflection.EventInfo
    Attributes
    System.Reflection.EventAttributes)
  (define-field-port
    event-handler-type
    #f
    #f
    (property:)
    System.Reflection.EventInfo
    EventHandlerType
    System.Type)
  (define-field-port
    is-multicast?
    #f
    #f
    (property:)
    System.Reflection.EventInfo
    IsMulticast
    System.Boolean)
  (define-field-port
    is-special-name?
    #f
    #f
    (property:)
    System.Reflection.EventInfo
    IsSpecialName
    System.Boolean)
  (define-field-port
    member-type
    #f
    #f
    (property:)
    System.Reflection.EventInfo
    MemberType
    System.Reflection.MemberTypes))
