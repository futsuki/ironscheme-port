(library (system reflection emit field-builder)
  (export is?
          field-builder?
          set-offset
          get-token
          set-custom-attribute
          is-defined?
          get-custom-attributes
          set-value
          get-value
          set-constant
          set-marshal
          attributes
          declaring-type
          field-handle
          field-type
          name
          reflected-type
          module)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Reflection.Emit.FieldBuilder a))
  (define (field-builder? a)
    (clr-is System.Reflection.Emit.FieldBuilder a))
  (define-method-port
    set-offset
    System.Reflection.Emit.FieldBuilder
    SetOffset
    (System.Void System.Int32))
  (define-method-port
    get-token
    System.Reflection.Emit.FieldBuilder
    GetToken
    (System.Reflection.Emit.FieldToken))
  (define-method-port
    set-custom-attribute
    System.Reflection.Emit.FieldBuilder
    SetCustomAttribute
    (System.Void System.Reflection.ConstructorInfo System.Byte[])
    (System.Void System.Reflection.Emit.CustomAttributeBuilder))
  (define-method-port
    is-defined?
    System.Reflection.Emit.FieldBuilder
    IsDefined
    (System.Boolean System.Type System.Boolean))
  (define-method-port
    get-custom-attributes
    System.Reflection.Emit.FieldBuilder
    GetCustomAttributes
    (System.Object[] System.Type System.Boolean)
    (System.Object[] System.Boolean))
  (define-method-port
    set-value
    System.Reflection.Emit.FieldBuilder
    SetValue
    (System.Void
      System.Object
      System.Object
      System.Reflection.BindingFlags
      System.Reflection.Binder
      System.Globalization.CultureInfo))
  (define-method-port
    get-value
    System.Reflection.Emit.FieldBuilder
    GetValue
    (System.Object System.Object))
  (define-method-port
    set-constant
    System.Reflection.Emit.FieldBuilder
    SetConstant
    (System.Void System.Object))
  (define-method-port
    set-marshal
    System.Reflection.Emit.FieldBuilder
    SetMarshal
    (System.Void System.Reflection.Emit.UnmanagedMarshal))
  (define-field-port
    attributes
    #f
    #f
    (property:)
    System.Reflection.Emit.FieldBuilder
    Attributes
    System.Reflection.FieldAttributes)
  (define-field-port
    declaring-type
    #f
    #f
    (property:)
    System.Reflection.Emit.FieldBuilder
    DeclaringType
    System.Type)
  (define-field-port
    field-handle
    #f
    #f
    (property:)
    System.Reflection.Emit.FieldBuilder
    FieldHandle
    System.RuntimeFieldHandle)
  (define-field-port
    field-type
    #f
    #f
    (property:)
    System.Reflection.Emit.FieldBuilder
    FieldType
    System.Type)
  (define-field-port
    name
    #f
    #f
    (property:)
    System.Reflection.Emit.FieldBuilder
    Name
    System.String)
  (define-field-port
    reflected-type
    #f
    #f
    (property:)
    System.Reflection.Emit.FieldBuilder
    ReflectedType
    System.Type)
  (define-field-port
    module
    #f
    #f
    (property:)
    System.Reflection.Emit.FieldBuilder
    Module
    System.Reflection.Module))
