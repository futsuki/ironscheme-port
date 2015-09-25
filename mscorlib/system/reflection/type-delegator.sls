(library (system reflection type-delegator)
  (export new
          is?
          type-delegator?
          get-properties
          invoke-member
          get-event
          get-members
          get-events
          get-interface
          get-nested-type
          get-member
          get-nested-types
          get-constructors
          get-element-type
          get-methods
          get-custom-attributes
          get-interfaces
          get-fields
          get-interface-map
          is-defined?
          get-field
          assembly
          assembly-qualified-name
          base-type
          full-name
          guid
          module
          name
          namespace
          type-handle
          underlying-system-type
          metadata-token)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Reflection.TypeDelegator a ...)))))
  (define (is? a) (clr-is System.Reflection.TypeDelegator a))
  (define (type-delegator? a)
    (clr-is System.Reflection.TypeDelegator a))
  (define-method-port
    get-properties
    System.Reflection.TypeDelegator
    GetProperties
    (System.Reflection.PropertyInfo[] System.Reflection.BindingFlags))
  (define-method-port
    invoke-member
    System.Reflection.TypeDelegator
    InvokeMember
    (System.Object
      System.String
      System.Reflection.BindingFlags
      System.Reflection.Binder
      System.Object
      System.Object[]
      System.Reflection.ParameterModifier[]
      System.Globalization.CultureInfo
      System.String[]))
  (define-method-port
    get-event
    System.Reflection.TypeDelegator
    GetEvent
    (System.Reflection.EventInfo
      System.String
      System.Reflection.BindingFlags))
  (define-method-port
    get-members
    System.Reflection.TypeDelegator
    GetMembers
    (System.Reflection.MemberInfo[] System.Reflection.BindingFlags))
  (define-method-port
    get-events
    System.Reflection.TypeDelegator
    GetEvents
    (System.Reflection.EventInfo[] System.Reflection.BindingFlags)
    (System.Reflection.EventInfo[]))
  (define-method-port
    get-interface
    System.Reflection.TypeDelegator
    GetInterface
    (System.Type System.String System.Boolean))
  (define-method-port
    get-nested-type
    System.Reflection.TypeDelegator
    GetNestedType
    (System.Type System.String System.Reflection.BindingFlags))
  (define-method-port
    get-member
    System.Reflection.TypeDelegator
    GetMember
    (System.Reflection.MemberInfo[]
      System.String
      System.Reflection.MemberTypes
      System.Reflection.BindingFlags))
  (define-method-port
    get-nested-types
    System.Reflection.TypeDelegator
    GetNestedTypes
    (System.Type[] System.Reflection.BindingFlags))
  (define-method-port
    get-constructors
    System.Reflection.TypeDelegator
    GetConstructors
    (System.Reflection.ConstructorInfo[]
      System.Reflection.BindingFlags))
  (define-method-port
    get-element-type
    System.Reflection.TypeDelegator
    GetElementType
    (System.Type))
  (define-method-port
    get-methods
    System.Reflection.TypeDelegator
    GetMethods
    (System.Reflection.MethodInfo[] System.Reflection.BindingFlags))
  (define-method-port
    get-custom-attributes
    System.Reflection.TypeDelegator
    GetCustomAttributes
    (System.Object[] System.Type System.Boolean)
    (System.Object[] System.Boolean))
  (define-method-port
    get-interfaces
    System.Reflection.TypeDelegator
    GetInterfaces
    (System.Type[]))
  (define-method-port
    get-fields
    System.Reflection.TypeDelegator
    GetFields
    (System.Reflection.FieldInfo[] System.Reflection.BindingFlags))
  (define-method-port
    get-interface-map
    System.Reflection.TypeDelegator
    GetInterfaceMap
    (System.Reflection.InterfaceMapping System.Type))
  (define-method-port
    is-defined?
    System.Reflection.TypeDelegator
    IsDefined
    (System.Boolean System.Type System.Boolean))
  (define-method-port
    get-field
    System.Reflection.TypeDelegator
    GetField
    (System.Reflection.FieldInfo
      System.String
      System.Reflection.BindingFlags))
  (define-field-port
    assembly
    #f
    #f
    (property:)
    System.Reflection.TypeDelegator
    Assembly
    System.Reflection.Assembly)
  (define-field-port
    assembly-qualified-name
    #f
    #f
    (property:)
    System.Reflection.TypeDelegator
    AssemblyQualifiedName
    System.String)
  (define-field-port
    base-type
    #f
    #f
    (property:)
    System.Reflection.TypeDelegator
    BaseType
    System.Type)
  (define-field-port
    full-name
    #f
    #f
    (property:)
    System.Reflection.TypeDelegator
    FullName
    System.String)
  (define-field-port
    guid
    #f
    #f
    (property:)
    System.Reflection.TypeDelegator
    GUID
    System.Guid)
  (define-field-port
    module
    #f
    #f
    (property:)
    System.Reflection.TypeDelegator
    Module
    System.Reflection.Module)
  (define-field-port
    name
    #f
    #f
    (property:)
    System.Reflection.TypeDelegator
    Name
    System.String)
  (define-field-port
    namespace
    #f
    #f
    (property:)
    System.Reflection.TypeDelegator
    Namespace
    System.String)
  (define-field-port
    type-handle
    #f
    #f
    (property:)
    System.Reflection.TypeDelegator
    TypeHandle
    System.RuntimeTypeHandle)
  (define-field-port
    underlying-system-type
    #f
    #f
    (property:)
    System.Reflection.TypeDelegator
    UnderlyingSystemType
    System.Type)
  (define-field-port
    metadata-token
    #f
    #f
    (property:)
    System.Reflection.TypeDelegator
    MetadataToken
    System.Int32))