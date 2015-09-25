(library (system reflection emit event-builder)
  (export is?
          event-builder?
          get-event-token
          set-add-on-method
          set-remove-on-method
          set-custom-attribute
          add-other-method
          set-raise-method)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Reflection.Emit.EventBuilder a))
  (define (event-builder? a)
    (clr-is System.Reflection.Emit.EventBuilder a))
  (define-method-port
    get-event-token
    System.Reflection.Emit.EventBuilder
    GetEventToken
    (System.Reflection.Emit.EventToken))
  (define-method-port
    set-add-on-method
    System.Reflection.Emit.EventBuilder
    SetAddOnMethod
    (System.Void System.Reflection.Emit.MethodBuilder))
  (define-method-port
    set-remove-on-method
    System.Reflection.Emit.EventBuilder
    SetRemoveOnMethod
    (System.Void System.Reflection.Emit.MethodBuilder))
  (define-method-port
    set-custom-attribute
    System.Reflection.Emit.EventBuilder
    SetCustomAttribute
    (System.Void System.Reflection.ConstructorInfo System.Byte[])
    (System.Void System.Reflection.Emit.CustomAttributeBuilder))
  (define-method-port
    add-other-method
    System.Reflection.Emit.EventBuilder
    AddOtherMethod
    (System.Void System.Reflection.Emit.MethodBuilder))
  (define-method-port
    set-raise-method
    System.Reflection.Emit.EventBuilder
    SetRaiseMethod
    (System.Void System.Reflection.Emit.MethodBuilder)))
