(library (system reflection emit event-on-type-builder-inst)
  (export is?
          event-on-type-builder-inst?
          get-remove-method
          get-other-methods
          is-defined?
          get-add-method
          get-custom-attributes
          get-raise-method
          attributes
          declaring-type
          name
          reflected-type)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Reflection.Emit.EventOnTypeBuilderInst a))
  (define (event-on-type-builder-inst? a)
    (clr-is System.Reflection.Emit.EventOnTypeBuilderInst a))
  (define-method-port
    get-remove-method
    System.Reflection.Emit.EventOnTypeBuilderInst
    GetRemoveMethod
    (System.Reflection.MethodInfo System.Boolean))
  (define-method-port
    get-other-methods
    System.Reflection.Emit.EventOnTypeBuilderInst
    GetOtherMethods
    (System.Reflection.MethodInfo[] System.Boolean))
  (define-method-port
    is-defined?
    System.Reflection.Emit.EventOnTypeBuilderInst
    IsDefined
    (System.Boolean System.Type System.Boolean))
  (define-method-port
    get-add-method
    System.Reflection.Emit.EventOnTypeBuilderInst
    GetAddMethod
    (System.Reflection.MethodInfo System.Boolean))
  (define-method-port
    get-custom-attributes
    System.Reflection.Emit.EventOnTypeBuilderInst
    GetCustomAttributes
    (System.Object[] System.Type System.Boolean)
    (System.Object[] System.Boolean))
  (define-method-port
    get-raise-method
    System.Reflection.Emit.EventOnTypeBuilderInst
    GetRaiseMethod
    (System.Reflection.MethodInfo System.Boolean))
  (define-field-port
    attributes
    #f
    #f
    (property:)
    System.Reflection.Emit.EventOnTypeBuilderInst
    Attributes
    System.Reflection.EventAttributes)
  (define-field-port
    declaring-type
    #f
    #f
    (property:)
    System.Reflection.Emit.EventOnTypeBuilderInst
    DeclaringType
    System.Type)
  (define-field-port
    name
    #f
    #f
    (property:)
    System.Reflection.Emit.EventOnTypeBuilderInst
    Name
    System.String)
  (define-field-port
    reflected-type
    #f
    #f
    (property:)
    System.Reflection.Emit.EventOnTypeBuilderInst
    ReflectedType
    System.Type))
