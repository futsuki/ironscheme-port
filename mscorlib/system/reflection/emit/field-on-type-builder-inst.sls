(library (system reflection emit field-on-type-builder-inst)
  (export new
          is?
          field-on-type-builder-inst?
          is-defined?
          get-custom-attributes
          set-value
          get-value
          to-string
          declaring-type
          name
          reflected-type
          attributes
          field-handle
          metadata-token
          field-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Reflection.Emit.FieldOnTypeBuilderInst
             a
             ...)))))
  (define (is? a)
    (clr-is System.Reflection.Emit.FieldOnTypeBuilderInst a))
  (define (field-on-type-builder-inst? a)
    (clr-is System.Reflection.Emit.FieldOnTypeBuilderInst a))
  (define-method-port
    is-defined?
    System.Reflection.Emit.FieldOnTypeBuilderInst
    IsDefined
    (System.Boolean System.Type System.Boolean))
  (define-method-port
    get-custom-attributes
    System.Reflection.Emit.FieldOnTypeBuilderInst
    GetCustomAttributes
    (System.Object[] System.Type System.Boolean)
    (System.Object[] System.Boolean))
  (define-method-port
    set-value
    System.Reflection.Emit.FieldOnTypeBuilderInst
    SetValue
    (System.Void
      System.Object
      System.Object
      System.Reflection.BindingFlags
      System.Reflection.Binder
      System.Globalization.CultureInfo))
  (define-method-port
    get-value
    System.Reflection.Emit.FieldOnTypeBuilderInst
    GetValue
    (System.Object System.Object))
  (define-method-port
    to-string
    System.Reflection.Emit.FieldOnTypeBuilderInst
    ToString
    (System.String))
  (define-field-port
    declaring-type
    #f
    #f
    (property:)
    System.Reflection.Emit.FieldOnTypeBuilderInst
    DeclaringType
    System.Type)
  (define-field-port
    name
    #f
    #f
    (property:)
    System.Reflection.Emit.FieldOnTypeBuilderInst
    Name
    System.String)
  (define-field-port
    reflected-type
    #f
    #f
    (property:)
    System.Reflection.Emit.FieldOnTypeBuilderInst
    ReflectedType
    System.Type)
  (define-field-port
    attributes
    #f
    #f
    (property:)
    System.Reflection.Emit.FieldOnTypeBuilderInst
    Attributes
    System.Reflection.FieldAttributes)
  (define-field-port
    field-handle
    #f
    #f
    (property:)
    System.Reflection.Emit.FieldOnTypeBuilderInst
    FieldHandle
    System.RuntimeFieldHandle)
  (define-field-port
    metadata-token
    #f
    #f
    (property:)
    System.Reflection.Emit.FieldOnTypeBuilderInst
    MetadataToken
    System.Int32)
  (define-field-port
    field-type
    #f
    #f
    (property:)
    System.Reflection.Emit.FieldOnTypeBuilderInst
    FieldType
    System.Type))
