(library (system reflection emit property-builder)
  (export is?
          property-builder?
          set-constant
          set-custom-attribute
          get-accessors
          is-defined?
          get-custom-attributes
          add-other-method
          set-get-method
          set-value
          get-value
          get-get-method
          get-index-parameters
          get-set-method
          set-set-method
          attributes
          can-read?
          can-write?
          declaring-type
          name
          property-token
          property-type
          reflected-type
          module)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Reflection.Emit.PropertyBuilder a))
  (define (property-builder? a)
    (clr-is System.Reflection.Emit.PropertyBuilder a))
  (define-method-port
    set-constant
    System.Reflection.Emit.PropertyBuilder
    SetConstant
    (System.Void System.Object))
  (define-method-port
    set-custom-attribute
    System.Reflection.Emit.PropertyBuilder
    SetCustomAttribute
    (System.Void System.Reflection.ConstructorInfo System.Byte[])
    (System.Void System.Reflection.Emit.CustomAttributeBuilder))
  (define-method-port
    get-accessors
    System.Reflection.Emit.PropertyBuilder
    GetAccessors
    (System.Reflection.MethodInfo[] System.Boolean))
  (define-method-port
    is-defined?
    System.Reflection.Emit.PropertyBuilder
    IsDefined
    (System.Boolean System.Type System.Boolean))
  (define-method-port
    get-custom-attributes
    System.Reflection.Emit.PropertyBuilder
    GetCustomAttributes
    (System.Object[] System.Type System.Boolean)
    (System.Object[] System.Boolean))
  (define-method-port
    add-other-method
    System.Reflection.Emit.PropertyBuilder
    AddOtherMethod
    (System.Void System.Reflection.Emit.MethodBuilder))
  (define-method-port
    set-get-method
    System.Reflection.Emit.PropertyBuilder
    SetGetMethod
    (System.Void System.Reflection.Emit.MethodBuilder))
  (define-method-port
    set-value
    System.Reflection.Emit.PropertyBuilder
    SetValue
    (System.Void
      System.Object
      System.Object
      System.Reflection.BindingFlags
      System.Reflection.Binder
      System.Object[]
      System.Globalization.CultureInfo)
    (System.Void System.Object System.Object System.Object[]))
  (define-method-port
    get-value
    System.Reflection.Emit.PropertyBuilder
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
    System.Reflection.Emit.PropertyBuilder
    GetGetMethod
    (System.Reflection.MethodInfo System.Boolean))
  (define-method-port
    get-index-parameters
    System.Reflection.Emit.PropertyBuilder
    GetIndexParameters
    (System.Reflection.ParameterInfo[]))
  (define-method-port
    get-set-method
    System.Reflection.Emit.PropertyBuilder
    GetSetMethod
    (System.Reflection.MethodInfo System.Boolean))
  (define-method-port
    set-set-method
    System.Reflection.Emit.PropertyBuilder
    SetSetMethod
    (System.Void System.Reflection.Emit.MethodBuilder))
  (define-field-port
    attributes
    #f
    #f
    (property:)
    System.Reflection.Emit.PropertyBuilder
    Attributes
    System.Reflection.PropertyAttributes)
  (define-field-port
    can-read?
    #f
    #f
    (property:)
    System.Reflection.Emit.PropertyBuilder
    CanRead
    System.Boolean)
  (define-field-port
    can-write?
    #f
    #f
    (property:)
    System.Reflection.Emit.PropertyBuilder
    CanWrite
    System.Boolean)
  (define-field-port
    declaring-type
    #f
    #f
    (property:)
    System.Reflection.Emit.PropertyBuilder
    DeclaringType
    System.Type)
  (define-field-port
    name
    #f
    #f
    (property:)
    System.Reflection.Emit.PropertyBuilder
    Name
    System.String)
  (define-field-port
    property-token
    #f
    #f
    (property:)
    System.Reflection.Emit.PropertyBuilder
    PropertyToken
    System.Reflection.Emit.PropertyToken)
  (define-field-port
    property-type
    #f
    #f
    (property:)
    System.Reflection.Emit.PropertyBuilder
    PropertyType
    System.Type)
  (define-field-port
    reflected-type
    #f
    #f
    (property:)
    System.Reflection.Emit.PropertyBuilder
    ReflectedType
    System.Type)
  (define-field-port
    module
    #f
    #f
    (property:)
    System.Reflection.Emit.PropertyBuilder
    Module
    System.Reflection.Module))
