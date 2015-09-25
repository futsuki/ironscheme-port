(library (system reflection mono-cmethod)
  (export new
          is?
          mono-cmethod?
          invoke
          to-string
          get-object-data
          is-defined?
          get-method-body
          get-custom-attributes
          get-parameters
          get-method-implementation-flags
          method-handle
          attributes
          calling-convention
          reflected-type
          declaring-type
          name)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Reflection.MonoCMethod a ...)))))
  (define (is? a) (clr-is System.Reflection.MonoCMethod a))
  (define (mono-cmethod? a) (clr-is System.Reflection.MonoCMethod a))
  (define-method-port
    invoke
    System.Reflection.MonoCMethod
    Invoke
    (System.Object
      System.Reflection.BindingFlags
      System.Reflection.Binder
      System.Object[]
      System.Globalization.CultureInfo)
    (System.Object
      System.Object
      System.Reflection.BindingFlags
      System.Reflection.Binder
      System.Object[]
      System.Globalization.CultureInfo))
  (define-method-port
    to-string
    System.Reflection.MonoCMethod
    ToString
    (System.String))
  (define-method-port
    get-object-data
    System.Reflection.MonoCMethod
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-method-port
    is-defined?
    System.Reflection.MonoCMethod
    IsDefined
    (System.Boolean System.Type System.Boolean))
  (define-method-port
    get-method-body
    System.Reflection.MonoCMethod
    GetMethodBody
    (System.Reflection.MethodBody))
  (define-method-port
    get-custom-attributes
    System.Reflection.MonoCMethod
    GetCustomAttributes
    (System.Object[] System.Type System.Boolean)
    (System.Object[] System.Boolean))
  (define-method-port
    get-parameters
    System.Reflection.MonoCMethod
    GetParameters
    (System.Reflection.ParameterInfo[]))
  (define-method-port
    get-method-implementation-flags
    System.Reflection.MonoCMethod
    GetMethodImplementationFlags
    (System.Reflection.MethodImplAttributes))
  (define-field-port
    method-handle
    #f
    #f
    (property:)
    System.Reflection.MonoCMethod
    MethodHandle
    System.RuntimeMethodHandle)
  (define-field-port
    attributes
    #f
    #f
    (property:)
    System.Reflection.MonoCMethod
    Attributes
    System.Reflection.MethodAttributes)
  (define-field-port
    calling-convention
    #f
    #f
    (property:)
    System.Reflection.MonoCMethod
    CallingConvention
    System.Reflection.CallingConventions)
  (define-field-port
    reflected-type
    #f
    #f
    (property:)
    System.Reflection.MonoCMethod
    ReflectedType
    System.Type)
  (define-field-port
    declaring-type
    #f
    #f
    (property:)
    System.Reflection.MonoCMethod
    DeclaringType
    System.Type)
  (define-field-port
    name
    #f
    #f
    (property:)
    System.Reflection.MonoCMethod
    Name
    System.String))
