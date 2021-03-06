(library (system type)
  (export is?
          type?
          get-type
          get-hash-code
          get-constructor
          get-property
          get-generic-type-definition
          get-type-handle
          get-generic-arguments
          get-properties
          get-method
          invoke-member
          find-members
          is-subclass-of?
          get-array-rank
          reflection-only-get-type
          find-interfaces
          get-event
          get-default-members
          make-array-type
          is-instance-of-type?
          get-interface
          get-nested-type
          get-member
          make-generic-type
          get-type-code
          get-events
          get-members
          get-element-type
          make-by-ref-type
          get-methods
          make-pointer-type
          get-constructors
          to-string
          get-nested-types
          get-interface-map
          get-interfaces
          get-type-from-clsid
          get-generic-parameter-constraints
          get-fields
          get-type-array
          equals?
          get-type-from-handle
          get-type-from-prog-id
          is-assignable-from?
          get-field
          delimiter
          empty-types
          filter-attribute
          filter-name
          filter-name-ignore-case
          missing
          assembly
          assembly-qualified-name
          attributes
          base-type
          declaring-type
          default-binder
          full-name
          guid
          has-element-type?
          is-abstract?
          is-ansi-class?
          is-array?
          is-auto-class?
          is-auto-layout?
          is-by-ref?
          is-class?
          is-comobject?
          is-contextful?
          is-enum?
          is-explicit-layout?
          is-import?
          is-interface?
          is-layout-sequential?
          is-marshal-by-ref?
          is-nested-assembly?
          is-nested-fam-andassem?
          is-nested-family?
          is-nested-fam-orassem?
          is-nested-private?
          is-nested-public?
          is-not-public?
          is-pointer?
          is-primitive?
          is-public?
          is-sealed?
          is-serializable?
          is-special-name?
          is-unicode-class?
          is-value-type?
          member-type
          module
          namespace
          reflected-type
          type-handle
          type-initializer
          underlying-system-type
          contains-generic-parameters?
          is-generic-type-definition?
          is-generic-type?
          is-generic-parameter?
          is-nested?
          is-visible?
          generic-parameter-position
          generic-parameter-attributes
          declaring-method
          struct-layout-attribute)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Type a))
  (define (type? a) (clr-is System.Type a))
  (define-method-port
    get-type
    System.Type
    GetType
    (System.Type)
    (static: System.Type System.String System.Boolean System.Boolean)
    (static: System.Type System.String System.Boolean)
    (static: System.Type System.String))
  (define-method-port
    get-hash-code
    System.Type
    GetHashCode
    (System.Int32))
  (define-method-port
    get-constructor
    System.Type
    GetConstructor
    (System.Reflection.ConstructorInfo
      System.Reflection.BindingFlags
      System.Reflection.Binder
      System.Reflection.CallingConventions
      System.Type[]
      System.Reflection.ParameterModifier[])
    (System.Reflection.ConstructorInfo
      System.Reflection.BindingFlags
      System.Reflection.Binder
      System.Type[]
      System.Reflection.ParameterModifier[])
    (System.Reflection.ConstructorInfo System.Type[]))
  (define-method-port
    get-property
    System.Type
    GetProperty
    (System.Reflection.PropertyInfo
      System.String
      System.Reflection.BindingFlags
      System.Reflection.Binder
      System.Type
      System.Type[]
      System.Reflection.ParameterModifier[])
    (System.Reflection.PropertyInfo
      System.String
      System.Type
      System.Type[]
      System.Reflection.ParameterModifier[])
    (System.Reflection.PropertyInfo
      System.String
      System.Type
      System.Type[])
    (System.Reflection.PropertyInfo System.String System.Type[])
    (System.Reflection.PropertyInfo System.String System.Type)
    (System.Reflection.PropertyInfo
      System.String
      System.Reflection.BindingFlags)
    (System.Reflection.PropertyInfo System.String))
  (define-method-port
    get-generic-type-definition
    System.Type
    GetGenericTypeDefinition
    (System.Type))
  (define-method-port
    get-type-handle
    System.Type
    GetTypeHandle
    (static: System.RuntimeTypeHandle System.Object))
  (define-method-port
    get-generic-arguments
    System.Type
    GetGenericArguments
    (System.Type[]))
  (define-method-port
    get-properties
    System.Type
    GetProperties
    (System.Reflection.PropertyInfo[] System.Reflection.BindingFlags)
    (System.Reflection.PropertyInfo[]))
  (define-method-port
    get-method
    System.Type
    GetMethod
    (System.Reflection.MethodInfo
      System.String
      System.Reflection.BindingFlags
      System.Reflection.Binder
      System.Reflection.CallingConventions
      System.Type[]
      System.Reflection.ParameterModifier[])
    (System.Reflection.MethodInfo
      System.String
      System.Reflection.BindingFlags
      System.Reflection.Binder
      System.Type[]
      System.Reflection.ParameterModifier[])
    (System.Reflection.MethodInfo
      System.String
      System.Type[]
      System.Reflection.ParameterModifier[])
    (System.Reflection.MethodInfo System.String System.Type[])
    (System.Reflection.MethodInfo
      System.String
      System.Reflection.BindingFlags)
    (System.Reflection.MethodInfo System.String))
  (define-method-port
    invoke-member
    System.Type
    InvokeMember
    (System.Object
      System.String
      System.Reflection.BindingFlags
      System.Reflection.Binder
      System.Object
      System.Object[]
      System.Reflection.ParameterModifier[]
      System.Globalization.CultureInfo
      System.String[])
    (System.Object
      System.String
      System.Reflection.BindingFlags
      System.Reflection.Binder
      System.Object
      System.Object[]
      System.Globalization.CultureInfo)
    (System.Object
      System.String
      System.Reflection.BindingFlags
      System.Reflection.Binder
      System.Object
      System.Object[]))
  (define-method-port
    find-members
    System.Type
    FindMembers
    (System.Reflection.MemberInfo[]
      System.Reflection.MemberTypes
      System.Reflection.BindingFlags
      System.Reflection.MemberFilter
      System.Object))
  (define-method-port
    is-subclass-of?
    System.Type
    IsSubclassOf
    (System.Boolean System.Type))
  (define-method-port
    get-array-rank
    System.Type
    GetArrayRank
    (System.Int32))
  (define-method-port
    reflection-only-get-type
    System.Type
    ReflectionOnlyGetType
    (static: System.Type System.String System.Boolean System.Boolean))
  (define-method-port
    find-interfaces
    System.Type
    FindInterfaces
    (System.Type[] System.Reflection.TypeFilter System.Object))
  (define-method-port
    get-event
    System.Type
    GetEvent
    (System.Reflection.EventInfo
      System.String
      System.Reflection.BindingFlags)
    (System.Reflection.EventInfo System.String))
  (define-method-port
    get-default-members
    System.Type
    GetDefaultMembers
    (System.Reflection.MemberInfo[]))
  (define-method-port
    make-array-type
    System.Type
    MakeArrayType
    (System.Type System.Int32)
    (System.Type))
  (define-method-port
    is-instance-of-type?
    System.Type
    IsInstanceOfType
    (System.Boolean System.Object))
  (define-method-port
    get-interface
    System.Type
    GetInterface
    (System.Type System.String System.Boolean)
    (System.Type System.String))
  (define-method-port
    get-nested-type
    System.Type
    GetNestedType
    (System.Type System.String System.Reflection.BindingFlags)
    (System.Type System.String))
  (define-method-port
    get-member
    System.Type
    GetMember
    (System.Reflection.MemberInfo[]
      System.String
      System.Reflection.MemberTypes
      System.Reflection.BindingFlags)
    (System.Reflection.MemberInfo[]
      System.String
      System.Reflection.BindingFlags)
    (System.Reflection.MemberInfo[] System.String))
  (define-method-port
    make-generic-type
    System.Type
    MakeGenericType
    (System.Type System.Type[]))
  (define-method-port
    get-type-code
    System.Type
    GetTypeCode
    (static: System.TypeCode System.Type))
  (define-method-port
    get-events
    System.Type
    GetEvents
    (System.Reflection.EventInfo[] System.Reflection.BindingFlags)
    (System.Reflection.EventInfo[]))
  (define-method-port
    get-members
    System.Type
    GetMembers
    (System.Reflection.MemberInfo[] System.Reflection.BindingFlags)
    (System.Reflection.MemberInfo[]))
  (define-method-port
    get-element-type
    System.Type
    GetElementType
    (System.Type))
  (define-method-port
    make-by-ref-type
    System.Type
    MakeByRefType
    (System.Type))
  (define-method-port
    get-methods
    System.Type
    GetMethods
    (System.Reflection.MethodInfo[] System.Reflection.BindingFlags)
    (System.Reflection.MethodInfo[]))
  (define-method-port
    make-pointer-type
    System.Type
    MakePointerType
    (System.Type))
  (define-method-port
    get-constructors
    System.Type
    GetConstructors
    (System.Reflection.ConstructorInfo[] System.Reflection.BindingFlags)
    (System.Reflection.ConstructorInfo[]))
  (define-method-port to-string System.Type ToString (System.String))
  (define-method-port
    get-nested-types
    System.Type
    GetNestedTypes
    (System.Type[] System.Reflection.BindingFlags)
    (System.Type[]))
  (define-method-port
    get-interface-map
    System.Type
    GetInterfaceMap
    (System.Reflection.InterfaceMapping System.Type))
  (define-method-port
    get-interfaces
    System.Type
    GetInterfaces
    (System.Type[]))
  (define-method-port
    get-type-from-clsid
    System.Type
    GetTypeFromCLSID
    (static: System.Type System.Guid System.String System.Boolean)
    (static: System.Type System.Guid System.String)
    (static: System.Type System.Guid System.Boolean)
    (static: System.Type System.Guid))
  (define-method-port
    get-generic-parameter-constraints
    System.Type
    GetGenericParameterConstraints
    (System.Type[]))
  (define-method-port
    get-fields
    System.Type
    GetFields
    (System.Reflection.FieldInfo[] System.Reflection.BindingFlags)
    (System.Reflection.FieldInfo[]))
  (define-method-port
    get-type-array
    System.Type
    GetTypeArray
    (static: System.Type[] System.Object[]))
  (define-method-port
    equals?
    System.Type
    Equals
    (System.Boolean System.Type)
    (System.Boolean System.Object))
  (define-method-port
    get-type-from-handle
    System.Type
    GetTypeFromHandle
    (static: System.Type System.RuntimeTypeHandle))
  (define-method-port
    get-type-from-prog-id
    System.Type
    GetTypeFromProgID
    (static: System.Type System.String System.String System.Boolean)
    (static: System.Type System.String System.String)
    (static: System.Type System.String System.Boolean)
    (static: System.Type System.String))
  (define-method-port
    is-assignable-from?
    System.Type
    IsAssignableFrom
    (System.Boolean System.Type))
  (define-method-port
    get-field
    System.Type
    GetField
    (System.Reflection.FieldInfo
      System.String
      System.Reflection.BindingFlags)
    (System.Reflection.FieldInfo System.String))
  (define-field-port
    delimiter
    #f
    #f
    (static:)
    System.Type
    Delimiter
    System.Char)
  (define-field-port
    empty-types
    #f
    #f
    (static:)
    System.Type
    EmptyTypes
    System.Type[])
  (define-field-port
    filter-attribute
    #f
    #f
    (static:)
    System.Type
    FilterAttribute
    System.Reflection.MemberFilter)
  (define-field-port
    filter-name
    #f
    #f
    (static:)
    System.Type
    FilterName
    System.Reflection.MemberFilter)
  (define-field-port
    filter-name-ignore-case
    #f
    #f
    (static:)
    System.Type
    FilterNameIgnoreCase
    System.Reflection.MemberFilter)
  (define-field-port
    missing
    #f
    #f
    (static:)
    System.Type
    Missing
    System.Object)
  (define-field-port
    assembly
    #f
    #f
    (property:)
    System.Type
    Assembly
    System.Reflection.Assembly)
  (define-field-port
    assembly-qualified-name
    #f
    #f
    (property:)
    System.Type
    AssemblyQualifiedName
    System.String)
  (define-field-port
    attributes
    #f
    #f
    (property:)
    System.Type
    Attributes
    System.Reflection.TypeAttributes)
  (define-field-port
    base-type
    #f
    #f
    (property:)
    System.Type
    BaseType
    System.Type)
  (define-field-port
    declaring-type
    #f
    #f
    (property:)
    System.Type
    DeclaringType
    System.Type)
  (define-field-port
    default-binder
    #f
    #f
    (static: property:)
    System.Type
    DefaultBinder
    System.Reflection.Binder)
  (define-field-port
    full-name
    #f
    #f
    (property:)
    System.Type
    FullName
    System.String)
  (define-field-port
    guid
    #f
    #f
    (property:)
    System.Type
    GUID
    System.Guid)
  (define-field-port
    has-element-type?
    #f
    #f
    (property:)
    System.Type
    HasElementType
    System.Boolean)
  (define-field-port
    is-abstract?
    #f
    #f
    (property:)
    System.Type
    IsAbstract
    System.Boolean)
  (define-field-port
    is-ansi-class?
    #f
    #f
    (property:)
    System.Type
    IsAnsiClass
    System.Boolean)
  (define-field-port
    is-array?
    #f
    #f
    (property:)
    System.Type
    IsArray
    System.Boolean)
  (define-field-port
    is-auto-class?
    #f
    #f
    (property:)
    System.Type
    IsAutoClass
    System.Boolean)
  (define-field-port
    is-auto-layout?
    #f
    #f
    (property:)
    System.Type
    IsAutoLayout
    System.Boolean)
  (define-field-port
    is-by-ref?
    #f
    #f
    (property:)
    System.Type
    IsByRef
    System.Boolean)
  (define-field-port
    is-class?
    #f
    #f
    (property:)
    System.Type
    IsClass
    System.Boolean)
  (define-field-port
    is-comobject?
    #f
    #f
    (property:)
    System.Type
    IsCOMObject
    System.Boolean)
  (define-field-port
    is-contextful?
    #f
    #f
    (property:)
    System.Type
    IsContextful
    System.Boolean)
  (define-field-port
    is-enum?
    #f
    #f
    (property:)
    System.Type
    IsEnum
    System.Boolean)
  (define-field-port
    is-explicit-layout?
    #f
    #f
    (property:)
    System.Type
    IsExplicitLayout
    System.Boolean)
  (define-field-port
    is-import?
    #f
    #f
    (property:)
    System.Type
    IsImport
    System.Boolean)
  (define-field-port
    is-interface?
    #f
    #f
    (property:)
    System.Type
    IsInterface
    System.Boolean)
  (define-field-port
    is-layout-sequential?
    #f
    #f
    (property:)
    System.Type
    IsLayoutSequential
    System.Boolean)
  (define-field-port
    is-marshal-by-ref?
    #f
    #f
    (property:)
    System.Type
    IsMarshalByRef
    System.Boolean)
  (define-field-port
    is-nested-assembly?
    #f
    #f
    (property:)
    System.Type
    IsNestedAssembly
    System.Boolean)
  (define-field-port
    is-nested-fam-andassem?
    #f
    #f
    (property:)
    System.Type
    IsNestedFamANDAssem
    System.Boolean)
  (define-field-port
    is-nested-family?
    #f
    #f
    (property:)
    System.Type
    IsNestedFamily
    System.Boolean)
  (define-field-port
    is-nested-fam-orassem?
    #f
    #f
    (property:)
    System.Type
    IsNestedFamORAssem
    System.Boolean)
  (define-field-port
    is-nested-private?
    #f
    #f
    (property:)
    System.Type
    IsNestedPrivate
    System.Boolean)
  (define-field-port
    is-nested-public?
    #f
    #f
    (property:)
    System.Type
    IsNestedPublic
    System.Boolean)
  (define-field-port
    is-not-public?
    #f
    #f
    (property:)
    System.Type
    IsNotPublic
    System.Boolean)
  (define-field-port
    is-pointer?
    #f
    #f
    (property:)
    System.Type
    IsPointer
    System.Boolean)
  (define-field-port
    is-primitive?
    #f
    #f
    (property:)
    System.Type
    IsPrimitive
    System.Boolean)
  (define-field-port
    is-public?
    #f
    #f
    (property:)
    System.Type
    IsPublic
    System.Boolean)
  (define-field-port
    is-sealed?
    #f
    #f
    (property:)
    System.Type
    IsSealed
    System.Boolean)
  (define-field-port
    is-serializable?
    #f
    #f
    (property:)
    System.Type
    IsSerializable
    System.Boolean)
  (define-field-port
    is-special-name?
    #f
    #f
    (property:)
    System.Type
    IsSpecialName
    System.Boolean)
  (define-field-port
    is-unicode-class?
    #f
    #f
    (property:)
    System.Type
    IsUnicodeClass
    System.Boolean)
  (define-field-port
    is-value-type?
    #f
    #f
    (property:)
    System.Type
    IsValueType
    System.Boolean)
  (define-field-port
    member-type
    #f
    #f
    (property:)
    System.Type
    MemberType
    System.Reflection.MemberTypes)
  (define-field-port
    module
    #f
    #f
    (property:)
    System.Type
    Module
    System.Reflection.Module)
  (define-field-port
    namespace
    #f
    #f
    (property:)
    System.Type
    Namespace
    System.String)
  (define-field-port
    reflected-type
    #f
    #f
    (property:)
    System.Type
    ReflectedType
    System.Type)
  (define-field-port
    type-handle
    #f
    #f
    (property:)
    System.Type
    TypeHandle
    System.RuntimeTypeHandle)
  (define-field-port
    type-initializer
    #f
    #f
    (property:)
    System.Type
    TypeInitializer
    System.Reflection.ConstructorInfo)
  (define-field-port
    underlying-system-type
    #f
    #f
    (property:)
    System.Type
    UnderlyingSystemType
    System.Type)
  (define-field-port
    contains-generic-parameters?
    #f
    #f
    (property:)
    System.Type
    ContainsGenericParameters
    System.Boolean)
  (define-field-port
    is-generic-type-definition?
    #f
    #f
    (property:)
    System.Type
    IsGenericTypeDefinition
    System.Boolean)
  (define-field-port
    is-generic-type?
    #f
    #f
    (property:)
    System.Type
    IsGenericType
    System.Boolean)
  (define-field-port
    is-generic-parameter?
    #f
    #f
    (property:)
    System.Type
    IsGenericParameter
    System.Boolean)
  (define-field-port
    is-nested?
    #f
    #f
    (property:)
    System.Type
    IsNested
    System.Boolean)
  (define-field-port
    is-visible?
    #f
    #f
    (property:)
    System.Type
    IsVisible
    System.Boolean)
  (define-field-port
    generic-parameter-position
    #f
    #f
    (property:)
    System.Type
    GenericParameterPosition
    System.Int32)
  (define-field-port
    generic-parameter-attributes
    #f
    #f
    (property:)
    System.Type
    GenericParameterAttributes
    System.Reflection.GenericParameterAttributes)
  (define-field-port
    declaring-method
    #f
    #f
    (property:)
    System.Type
    DeclaringMethod
    System.Reflection.MethodBase)
  (define-field-port
    struct-layout-attribute
    #f
    #f
    (property:)
    System.Type
    StructLayoutAttribute
    System.Runtime.InteropServices.StructLayoutAttribute))
