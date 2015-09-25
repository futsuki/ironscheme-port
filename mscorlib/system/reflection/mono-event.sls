(library (system reflection mono-event)
  (export new
          is?
          mono-event?
          get-remove-method
          get-object-data
          get-other-methods
          is-defined?
          get-add-method
          get-custom-attributes
          get-raise-method
          to-string
          attributes
          declaring-type
          reflected-type
          name)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Reflection.MonoEvent a ...)))))
  (define (is? a) (clr-is System.Reflection.MonoEvent a))
  (define (mono-event? a) (clr-is System.Reflection.MonoEvent a))
  (define-method-port
    get-remove-method
    System.Reflection.MonoEvent
    GetRemoveMethod
    (System.Reflection.MethodInfo System.Boolean))
  (define-method-port
    get-object-data
    System.Reflection.MonoEvent
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-method-port
    get-other-methods
    System.Reflection.MonoEvent
    GetOtherMethods
    (System.Reflection.MethodInfo[] System.Boolean))
  (define-method-port
    is-defined?
    System.Reflection.MonoEvent
    IsDefined
    (System.Boolean System.Type System.Boolean))
  (define-method-port
    get-add-method
    System.Reflection.MonoEvent
    GetAddMethod
    (System.Reflection.MethodInfo System.Boolean))
  (define-method-port
    get-custom-attributes
    System.Reflection.MonoEvent
    GetCustomAttributes
    (System.Object[] System.Type System.Boolean)
    (System.Object[] System.Boolean))
  (define-method-port
    get-raise-method
    System.Reflection.MonoEvent
    GetRaiseMethod
    (System.Reflection.MethodInfo System.Boolean))
  (define-method-port
    to-string
    System.Reflection.MonoEvent
    ToString
    (System.String))
  (define-field-port
    attributes
    #f
    #f
    (property:)
    System.Reflection.MonoEvent
    Attributes
    System.Reflection.EventAttributes)
  (define-field-port
    declaring-type
    #f
    #f
    (property:)
    System.Reflection.MonoEvent
    DeclaringType
    System.Type)
  (define-field-port
    reflected-type
    #f
    #f
    (property:)
    System.Reflection.MonoEvent
    ReflectedType
    System.Type)
  (define-field-port
    name
    #f
    #f
    (property:)
    System.Reflection.MonoEvent
    Name
    System.String))
