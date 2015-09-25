(library (system reflection mono-field)
  (export new
          is?
          mono-field?
          get-object-data
          is-defined?
          get-raw-constant-value
          get-custom-attributes
          set-value
          get-value
          to-string
          attributes
          field-handle
          field-type
          reflected-type
          declaring-type
          name)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Reflection.MonoField a ...)))))
  (define (is? a) (clr-is System.Reflection.MonoField a))
  (define (mono-field? a) (clr-is System.Reflection.MonoField a))
  (define-method-port
    get-object-data
    System.Reflection.MonoField
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-method-port
    is-defined?
    System.Reflection.MonoField
    IsDefined
    (System.Boolean System.Type System.Boolean))
  (define-method-port
    get-raw-constant-value
    System.Reflection.MonoField
    GetRawConstantValue
    (System.Object))
  (define-method-port
    get-custom-attributes
    System.Reflection.MonoField
    GetCustomAttributes
    (System.Object[] System.Type System.Boolean)
    (System.Object[] System.Boolean))
  (define-method-port
    set-value
    System.Reflection.MonoField
    SetValue
    (System.Void
      System.Object
      System.Object
      System.Reflection.BindingFlags
      System.Reflection.Binder
      System.Globalization.CultureInfo))
  (define-method-port
    get-value
    System.Reflection.MonoField
    GetValue
    (System.Object System.Object))
  (define-method-port
    to-string
    System.Reflection.MonoField
    ToString
    (System.String))
  (define-field-port
    attributes
    #f
    #f
    (property:)
    System.Reflection.MonoField
    Attributes
    System.Reflection.FieldAttributes)
  (define-field-port
    field-handle
    #f
    #f
    (property:)
    System.Reflection.MonoField
    FieldHandle
    System.RuntimeFieldHandle)
  (define-field-port
    field-type
    #f
    #f
    (property:)
    System.Reflection.MonoField
    FieldType
    System.Type)
  (define-field-port
    reflected-type
    #f
    #f
    (property:)
    System.Reflection.MonoField
    ReflectedType
    System.Type)
  (define-field-port
    declaring-type
    #f
    #f
    (property:)
    System.Reflection.MonoField
    DeclaringType
    System.Type)
  (define-field-port
    name
    #f
    #f
    (property:)
    System.Reflection.MonoField
    Name
    System.String))
