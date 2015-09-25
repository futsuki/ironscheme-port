(library (system reflection mono-property)
  (export new
          is?
          mono-property?
          get-optional-custom-modifiers
          get-required-custom-modifiers
          get-object-data
          get-accessors
          is-defined?
          get-custom-attributes
          set-value
          get-value
          get-get-method
          get-index-parameters
          get-set-method
          to-string
          attributes
          can-read?
          can-write?
          property-type
          reflected-type
          declaring-type
          name)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Reflection.MonoProperty a ...)))))
  (define (is? a) (clr-is System.Reflection.MonoProperty a))
  (define (mono-property? a) (clr-is System.Reflection.MonoProperty a))
  (define-method-port
    get-optional-custom-modifiers
    System.Reflection.MonoProperty
    GetOptionalCustomModifiers
    (System.Type[]))
  (define-method-port
    get-required-custom-modifiers
    System.Reflection.MonoProperty
    GetRequiredCustomModifiers
    (System.Type[]))
  (define-method-port
    get-object-data
    System.Reflection.MonoProperty
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-method-port
    get-accessors
    System.Reflection.MonoProperty
    GetAccessors
    (System.Reflection.MethodInfo[] System.Boolean))
  (define-method-port
    is-defined?
    System.Reflection.MonoProperty
    IsDefined
    (System.Boolean System.Type System.Boolean))
  (define-method-port
    get-custom-attributes
    System.Reflection.MonoProperty
    GetCustomAttributes
    (System.Object[] System.Type System.Boolean)
    (System.Object[] System.Boolean))
  (define-method-port
    set-value
    System.Reflection.MonoProperty
    SetValue
    (System.Void
      System.Object
      System.Object
      System.Reflection.BindingFlags
      System.Reflection.Binder
      System.Object[]
      System.Globalization.CultureInfo))
  (define-method-port
    get-value
    System.Reflection.MonoProperty
    GetValue
    (System.Object
      System.Object
      System.Reflection.BindingFlags
      System.Reflection.Binder
      System.Object[]
      System.Globalization.CultureInfo)
    (System.Object System.Object System.Object[]))
  (define-method-port
    get-get-method
    System.Reflection.MonoProperty
    GetGetMethod
    (System.Reflection.MethodInfo System.Boolean))
  (define-method-port
    get-index-parameters
    System.Reflection.MonoProperty
    GetIndexParameters
    (System.Reflection.ParameterInfo[]))
  (define-method-port
    get-set-method
    System.Reflection.MonoProperty
    GetSetMethod
    (System.Reflection.MethodInfo System.Boolean))
  (define-method-port
    to-string
    System.Reflection.MonoProperty
    ToString
    (System.String))
  (define-field-port
    attributes
    #f
    #f
    (property:)
    System.Reflection.MonoProperty
    Attributes
    System.Reflection.PropertyAttributes)
  (define-field-port
    can-read?
    #f
    #f
    (property:)
    System.Reflection.MonoProperty
    CanRead
    System.Boolean)
  (define-field-port
    can-write?
    #f
    #f
    (property:)
    System.Reflection.MonoProperty
    CanWrite
    System.Boolean)
  (define-field-port
    property-type
    #f
    #f
    (property:)
    System.Reflection.MonoProperty
    PropertyType
    System.Type)
  (define-field-port
    reflected-type
    #f
    #f
    (property:)
    System.Reflection.MonoProperty
    ReflectedType
    System.Type)
  (define-field-port
    declaring-type
    #f
    #f
    (property:)
    System.Reflection.MonoProperty
    DeclaringType
    System.Type)
  (define-field-port
    name
    #f
    #f
    (property:)
    System.Reflection.MonoProperty
    Name
    System.String))
