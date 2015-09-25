(library (system reflection emit property-on-type-builder-inst)
  (export is?
          property-on-type-builder-inst?
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
          declaring-type
          reflected-type
          name)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Reflection.Emit.PropertyOnTypeBuilderInst a))
  (define (property-on-type-builder-inst? a)
    (clr-is System.Reflection.Emit.PropertyOnTypeBuilderInst a))
  (define-method-port
    get-accessors
    System.Reflection.Emit.PropertyOnTypeBuilderInst
    GetAccessors
    (System.Reflection.MethodInfo[] System.Boolean))
  (define-method-port
    is-defined?
    System.Reflection.Emit.PropertyOnTypeBuilderInst
    IsDefined
    (System.Boolean System.Type System.Boolean))
  (define-method-port
    get-custom-attributes
    System.Reflection.Emit.PropertyOnTypeBuilderInst
    GetCustomAttributes
    (System.Object[] System.Type System.Boolean)
    (System.Object[] System.Boolean))
  (define-method-port
    set-value
    System.Reflection.Emit.PropertyOnTypeBuilderInst
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
    System.Reflection.Emit.PropertyOnTypeBuilderInst
    GetValue
    (System.Object
      System.Object
      System.Reflection.BindingFlags
      System.Reflection.Binder
      System.Object[]
      System.Globalization.CultureInfo))
  (define-method-port
    get-get-method
    System.Reflection.Emit.PropertyOnTypeBuilderInst
    GetGetMethod
    (System.Reflection.MethodInfo System.Boolean))
  (define-method-port
    get-index-parameters
    System.Reflection.Emit.PropertyOnTypeBuilderInst
    GetIndexParameters
    (System.Reflection.ParameterInfo[]))
  (define-method-port
    get-set-method
    System.Reflection.Emit.PropertyOnTypeBuilderInst
    GetSetMethod
    (System.Reflection.MethodInfo System.Boolean))
  (define-method-port
    to-string
    System.Reflection.Emit.PropertyOnTypeBuilderInst
    ToString
    (System.String))
  (define-field-port
    attributes
    #f
    #f
    (property:)
    System.Reflection.Emit.PropertyOnTypeBuilderInst
    Attributes
    System.Reflection.PropertyAttributes)
  (define-field-port
    can-read?
    #f
    #f
    (property:)
    System.Reflection.Emit.PropertyOnTypeBuilderInst
    CanRead
    System.Boolean)
  (define-field-port
    can-write?
    #f
    #f
    (property:)
    System.Reflection.Emit.PropertyOnTypeBuilderInst
    CanWrite
    System.Boolean)
  (define-field-port
    property-type
    #f
    #f
    (property:)
    System.Reflection.Emit.PropertyOnTypeBuilderInst
    PropertyType
    System.Type)
  (define-field-port
    declaring-type
    #f
    #f
    (property:)
    System.Reflection.Emit.PropertyOnTypeBuilderInst
    DeclaringType
    System.Type)
  (define-field-port
    reflected-type
    #f
    #f
    (property:)
    System.Reflection.Emit.PropertyOnTypeBuilderInst
    ReflectedType
    System.Type)
  (define-field-port
    name
    #f
    #f
    (property:)
    System.Reflection.Emit.PropertyOnTypeBuilderInst
    Name
    System.String))
