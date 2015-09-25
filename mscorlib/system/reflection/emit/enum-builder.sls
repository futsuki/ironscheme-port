(library (system reflection emit enum-builder)
  (export is?
          enum-builder?
          make-array-type
          get-properties
          invoke-member
          get-event
          get-members
          get-events
          get-interface
          get-nested-type
          get-member
          set-custom-attribute
          get-nested-types
          get-constructors
          define-literal
          get-element-type
          make-by-ref-type
          get-methods
          get-custom-attributes
          make-pointer-type
          create-type
          get-interfaces
          get-fields
          get-interface-map
          is-defined?
          get-field
          assembly
          assembly-qualified-name
          base-type
          declaring-type
          full-name
          guid
          module
          name
          namespace
          reflected-type
          type-handle
          type-token
          underlying-field
          underlying-system-type)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Reflection.Emit.EnumBuilder a))
  (define (enum-builder? a)
    (clr-is System.Reflection.Emit.EnumBuilder a))
  (define-method-port
    make-array-type
    System.Reflection.Emit.EnumBuilder
    MakeArrayType
    (System.Type System.Int32)
    (System.Type))
  (define-method-port
    get-properties
    System.Reflection.Emit.EnumBuilder
    GetProperties
    (System.Reflection.PropertyInfo[] System.Reflection.BindingFlags))
  (define-method-port
    invoke-member
    System.Reflection.Emit.EnumBuilder
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
    System.Reflection.Emit.EnumBuilder
    GetEvent
    (System.Reflection.EventInfo
      System.String
      System.Reflection.BindingFlags))
  (define-method-port
    get-members
    System.Reflection.Emit.EnumBuilder
    GetMembers
    (System.Reflection.MemberInfo[] System.Reflection.BindingFlags))
  (define-method-port
    get-events
    System.Reflection.Emit.EnumBuilder
    GetEvents
    (System.Reflection.EventInfo[] System.Reflection.BindingFlags)
    (System.Reflection.EventInfo[]))
  (define-method-port
    get-interface
    System.Reflection.Emit.EnumBuilder
    GetInterface
    (System.Type System.String System.Boolean))
  (define-method-port
    get-nested-type
    System.Reflection.Emit.EnumBuilder
    GetNestedType
    (System.Type System.String System.Reflection.BindingFlags))
  (define-method-port
    get-member
    System.Reflection.Emit.EnumBuilder
    GetMember
    (System.Reflection.MemberInfo[]
      System.String
      System.Reflection.MemberTypes
      System.Reflection.BindingFlags))
  (define-method-port
    set-custom-attribute
    System.Reflection.Emit.EnumBuilder
    SetCustomAttribute
    (System.Void System.Reflection.ConstructorInfo System.Byte[])
    (System.Void System.Reflection.Emit.CustomAttributeBuilder))
  (define-method-port
    get-nested-types
    System.Reflection.Emit.EnumBuilder
    GetNestedTypes
    (System.Type[] System.Reflection.BindingFlags))
  (define-method-port
    get-constructors
    System.Reflection.Emit.EnumBuilder
    GetConstructors
    (System.Reflection.ConstructorInfo[]
      System.Reflection.BindingFlags))
  (define-method-port
    define-literal
    System.Reflection.Emit.EnumBuilder
    DefineLiteral
    (System.Reflection.Emit.FieldBuilder System.String System.Object))
  (define-method-port
    get-element-type
    System.Reflection.Emit.EnumBuilder
    GetElementType
    (System.Type))
  (define-method-port
    make-by-ref-type
    System.Reflection.Emit.EnumBuilder
    MakeByRefType
    (System.Type))
  (define-method-port
    get-methods
    System.Reflection.Emit.EnumBuilder
    GetMethods
    (System.Reflection.MethodInfo[] System.Reflection.BindingFlags))
  (define-method-port
    get-custom-attributes
    System.Reflection.Emit.EnumBuilder
    GetCustomAttributes
    (System.Object[] System.Type System.Boolean)
    (System.Object[] System.Boolean))
  (define-method-port
    make-pointer-type
    System.Reflection.Emit.EnumBuilder
    MakePointerType
    (System.Type))
  (define-method-port
    create-type
    System.Reflection.Emit.EnumBuilder
    CreateType
    (System.Type))
  (define-method-port
    get-interfaces
    System.Reflection.Emit.EnumBuilder
    GetInterfaces
    (System.Type[]))
  (define-method-port
    get-fields
    System.Reflection.Emit.EnumBuilder
    GetFields
    (System.Reflection.FieldInfo[] System.Reflection.BindingFlags))
  (define-method-port
    get-interface-map
    System.Reflection.Emit.EnumBuilder
    GetInterfaceMap
    (System.Reflection.InterfaceMapping System.Type))
  (define-method-port
    is-defined?
    System.Reflection.Emit.EnumBuilder
    IsDefined
    (System.Boolean System.Type System.Boolean))
  (define-method-port
    get-field
    System.Reflection.Emit.EnumBuilder
    GetField
    (System.Reflection.FieldInfo
      System.String
      System.Reflection.BindingFlags))
  (define-field-port
    assembly
    #f
    #f
    (property:)
    System.Reflection.Emit.EnumBuilder
    Assembly
    System.Reflection.Assembly)
  (define-field-port
    assembly-qualified-name
    #f
    #f
    (property:)
    System.Reflection.Emit.EnumBuilder
    AssemblyQualifiedName
    System.String)
  (define-field-port
    base-type
    #f
    #f
    (property:)
    System.Reflection.Emit.EnumBuilder
    BaseType
    System.Type)
  (define-field-port
    declaring-type
    #f
    #f
    (property:)
    System.Reflection.Emit.EnumBuilder
    DeclaringType
    System.Type)
  (define-field-port
    full-name
    #f
    #f
    (property:)
    System.Reflection.Emit.EnumBuilder
    FullName
    System.String)
  (define-field-port
    guid
    #f
    #f
    (property:)
    System.Reflection.Emit.EnumBuilder
    GUID
    System.Guid)
  (define-field-port
    module
    #f
    #f
    (property:)
    System.Reflection.Emit.EnumBuilder
    Module
    System.Reflection.Module)
  (define-field-port
    name
    #f
    #f
    (property:)
    System.Reflection.Emit.EnumBuilder
    Name
    System.String)
  (define-field-port
    namespace
    #f
    #f
    (property:)
    System.Reflection.Emit.EnumBuilder
    Namespace
    System.String)
  (define-field-port
    reflected-type
    #f
    #f
    (property:)
    System.Reflection.Emit.EnumBuilder
    ReflectedType
    System.Type)
  (define-field-port
    type-handle
    #f
    #f
    (property:)
    System.Reflection.Emit.EnumBuilder
    TypeHandle
    System.RuntimeTypeHandle)
  (define-field-port
    type-token
    #f
    #f
    (property:)
    System.Reflection.Emit.EnumBuilder
    TypeToken
    System.Reflection.Emit.TypeToken)
  (define-field-port
    underlying-field
    #f
    #f
    (property:)
    System.Reflection.Emit.EnumBuilder
    UnderlyingField
    System.Reflection.Emit.FieldBuilder)
  (define-field-port
    underlying-system-type
    #f
    #f
    (property:)
    System.Reflection.Emit.EnumBuilder
    UnderlyingSystemType
    System.Type))