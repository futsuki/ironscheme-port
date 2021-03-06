(library (system reflection emit method-on-type-builder-inst)
  (export new
          is?
          method-on-type-builder-inst?
          get-generic-method-definition
          get-generic-arguments
          invoke
          get-method-implementation-flags
          get-base-definition
          make-generic-method
          is-defined?
          get-custom-attributes
          get-parameters
          to-string
          declaring-type
          name
          reflected-type
          return-type
          metadata-token
          method-handle
          attributes
          calling-convention
          contains-generic-parameters?
          is-generic-method-definition?
          is-generic-method?
          return-type-custom-attributes)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Reflection.Emit.MethodOnTypeBuilderInst
             a
             ...)))))
  (define (is? a)
    (clr-is System.Reflection.Emit.MethodOnTypeBuilderInst a))
  (define (method-on-type-builder-inst? a)
    (clr-is System.Reflection.Emit.MethodOnTypeBuilderInst a))
  (define-method-port
    get-generic-method-definition
    System.Reflection.Emit.MethodOnTypeBuilderInst
    GetGenericMethodDefinition
    (System.Reflection.MethodInfo))
  (define-method-port
    get-generic-arguments
    System.Reflection.Emit.MethodOnTypeBuilderInst
    GetGenericArguments
    (System.Type[]))
  (define-method-port
    invoke
    System.Reflection.Emit.MethodOnTypeBuilderInst
    Invoke
    (System.Object
      System.Object
      System.Reflection.BindingFlags
      System.Reflection.Binder
      System.Object[]
      System.Globalization.CultureInfo))
  (define-method-port
    get-method-implementation-flags
    System.Reflection.Emit.MethodOnTypeBuilderInst
    GetMethodImplementationFlags
    (System.Reflection.MethodImplAttributes))
  (define-method-port
    get-base-definition
    System.Reflection.Emit.MethodOnTypeBuilderInst
    GetBaseDefinition
    (System.Reflection.MethodInfo))
  (define-method-port
    make-generic-method
    System.Reflection.Emit.MethodOnTypeBuilderInst
    MakeGenericMethod
    (System.Reflection.MethodInfo System.Type[]))
  (define-method-port
    is-defined?
    System.Reflection.Emit.MethodOnTypeBuilderInst
    IsDefined
    (System.Boolean System.Type System.Boolean))
  (define-method-port
    get-custom-attributes
    System.Reflection.Emit.MethodOnTypeBuilderInst
    GetCustomAttributes
    (System.Object[] System.Type System.Boolean)
    (System.Object[] System.Boolean))
  (define-method-port
    get-parameters
    System.Reflection.Emit.MethodOnTypeBuilderInst
    GetParameters
    (System.Reflection.ParameterInfo[]))
  (define-method-port
    to-string
    System.Reflection.Emit.MethodOnTypeBuilderInst
    ToString
    (System.String))
  (define-field-port
    declaring-type
    #f
    #f
    (property:)
    System.Reflection.Emit.MethodOnTypeBuilderInst
    DeclaringType
    System.Type)
  (define-field-port
    name
    #f
    #f
    (property:)
    System.Reflection.Emit.MethodOnTypeBuilderInst
    Name
    System.String)
  (define-field-port
    reflected-type
    #f
    #f
    (property:)
    System.Reflection.Emit.MethodOnTypeBuilderInst
    ReflectedType
    System.Type)
  (define-field-port
    return-type
    #f
    #f
    (property:)
    System.Reflection.Emit.MethodOnTypeBuilderInst
    ReturnType
    System.Type)
  (define-field-port
    metadata-token
    #f
    #f
    (property:)
    System.Reflection.Emit.MethodOnTypeBuilderInst
    MetadataToken
    System.Int32)
  (define-field-port
    method-handle
    #f
    #f
    (property:)
    System.Reflection.Emit.MethodOnTypeBuilderInst
    MethodHandle
    System.RuntimeMethodHandle)
  (define-field-port
    attributes
    #f
    #f
    (property:)
    System.Reflection.Emit.MethodOnTypeBuilderInst
    Attributes
    System.Reflection.MethodAttributes)
  (define-field-port
    calling-convention
    #f
    #f
    (property:)
    System.Reflection.Emit.MethodOnTypeBuilderInst
    CallingConvention
    System.Reflection.CallingConventions)
  (define-field-port
    contains-generic-parameters?
    #f
    #f
    (property:)
    System.Reflection.Emit.MethodOnTypeBuilderInst
    ContainsGenericParameters
    System.Boolean)
  (define-field-port
    is-generic-method-definition?
    #f
    #f
    (property:)
    System.Reflection.Emit.MethodOnTypeBuilderInst
    IsGenericMethodDefinition
    System.Boolean)
  (define-field-port
    is-generic-method?
    #f
    #f
    (property:)
    System.Reflection.Emit.MethodOnTypeBuilderInst
    IsGenericMethod
    System.Boolean)
  (define-field-port
    return-type-custom-attributes
    #f
    #f
    (property:)
    System.Reflection.Emit.MethodOnTypeBuilderInst
    ReturnTypeCustomAttributes
    System.Reflection.ICustomAttributeProvider))
