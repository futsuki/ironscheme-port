(library (system reflection emit type-builder)
  (export is?
          type-builder?
          get-nested-type
          get-constructor
          define-initialized-data
          make-array-type
          define-default-constructor
          is-created?
          get-generic-arguments
          define-field
          get-generic-type-definition
          get-properties
          set-custom-attribute
          invoke-member
          define-type-initializer
          define-event
          get-method
          make-generic-type
          get-event
          get-members
          get-interfaces
          add-interface-implementation
          define-method-override
          get-events
          get-interface
          define-method
          add-declarative-security
          define-generic-parameters
          get-member
          define-nested-type
          is-subclass-of?
          get-nested-types
          get-constructors
          define-uninitialized-data
          is-defined?
          make-by-ref-type
          get-methods
          get-custom-attributes
          make-pointer-type
          define-property
          create-type
          get-element-type
          define-constructor
          get-fields
          define-pinvoke-method
          get-interface-map
          to-string
          set-parent
          is-assignable-from?
          get-field
          unspecified-type-size
          assembly
          assembly-qualified-name
          base-type
          declaring-type
          underlying-system-type
          full-name
          guid
          module
          name
          namespace
          packing-size
          size
          reflected-type
          type-handle
          type-token
          contains-generic-parameters?
          is-generic-parameter?
          generic-parameter-attributes
          is-generic-type-definition?
          is-generic-type?
          generic-parameter-position
          declaring-method)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Reflection.Emit.TypeBuilder a))
  (define (type-builder? a)
    (clr-is System.Reflection.Emit.TypeBuilder a))
  (define-method-port
    get-nested-type
    System.Reflection.Emit.TypeBuilder
    GetNestedType
    (System.Type System.String System.Reflection.BindingFlags))
  (define-method-port
    get-constructor
    System.Reflection.Emit.TypeBuilder
    GetConstructor
    (static:
      System.Reflection.ConstructorInfo
      System.Type
      System.Reflection.ConstructorInfo))
  (define-method-port
    define-initialized-data
    System.Reflection.Emit.TypeBuilder
    DefineInitializedData
    (System.Reflection.Emit.FieldBuilder
      System.String
      System.Byte[]
      System.Reflection.FieldAttributes))
  (define-method-port
    make-array-type
    System.Reflection.Emit.TypeBuilder
    MakeArrayType
    (System.Type System.Int32)
    (System.Type))
  (define-method-port
    define-default-constructor
    System.Reflection.Emit.TypeBuilder
    DefineDefaultConstructor
    (System.Reflection.Emit.ConstructorBuilder
      System.Reflection.MethodAttributes))
  (define-method-port
    is-created?
    System.Reflection.Emit.TypeBuilder
    IsCreated
    (System.Boolean))
  (define-method-port
    get-generic-arguments
    System.Reflection.Emit.TypeBuilder
    GetGenericArguments
    (System.Type[]))
  (define-method-port
    define-field
    System.Reflection.Emit.TypeBuilder
    DefineField
    (System.Reflection.Emit.FieldBuilder
      System.String
      System.Type
      System.Type[]
      System.Type[]
      System.Reflection.FieldAttributes)
    (System.Reflection.Emit.FieldBuilder
      System.String
      System.Type
      System.Reflection.FieldAttributes))
  (define-method-port
    get-generic-type-definition
    System.Reflection.Emit.TypeBuilder
    GetGenericTypeDefinition
    (System.Type))
  (define-method-port
    get-properties
    System.Reflection.Emit.TypeBuilder
    GetProperties
    (System.Reflection.PropertyInfo[] System.Reflection.BindingFlags))
  (define-method-port
    set-custom-attribute
    System.Reflection.Emit.TypeBuilder
    SetCustomAttribute
    (System.Void System.Reflection.ConstructorInfo System.Byte[])
    (System.Void System.Reflection.Emit.CustomAttributeBuilder))
  (define-method-port
    invoke-member
    System.Reflection.Emit.TypeBuilder
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
    define-type-initializer
    System.Reflection.Emit.TypeBuilder
    DefineTypeInitializer
    (System.Reflection.Emit.ConstructorBuilder))
  (define-method-port
    define-event
    System.Reflection.Emit.TypeBuilder
    DefineEvent
    (System.Reflection.Emit.EventBuilder
      System.String
      System.Reflection.EventAttributes
      System.Type))
  (define-method-port
    get-method
    System.Reflection.Emit.TypeBuilder
    GetMethod
    (static:
      System.Reflection.MethodInfo
      System.Type
      System.Reflection.MethodInfo))
  (define-method-port
    make-generic-type
    System.Reflection.Emit.TypeBuilder
    MakeGenericType
    (System.Type System.Type[]))
  (define-method-port
    get-event
    System.Reflection.Emit.TypeBuilder
    GetEvent
    (System.Reflection.EventInfo
      System.String
      System.Reflection.BindingFlags))
  (define-method-port
    get-members
    System.Reflection.Emit.TypeBuilder
    GetMembers
    (System.Reflection.MemberInfo[] System.Reflection.BindingFlags))
  (define-method-port
    get-interfaces
    System.Reflection.Emit.TypeBuilder
    GetInterfaces
    (System.Type[]))
  (define-method-port
    add-interface-implementation
    System.Reflection.Emit.TypeBuilder
    AddInterfaceImplementation
    (System.Void System.Type))
  (define-method-port
    define-method-override
    System.Reflection.Emit.TypeBuilder
    DefineMethodOverride
    (System.Void
      System.Reflection.MethodInfo
      System.Reflection.MethodInfo))
  (define-method-port
    get-events
    System.Reflection.Emit.TypeBuilder
    GetEvents
    (System.Reflection.EventInfo[] System.Reflection.BindingFlags)
    (System.Reflection.EventInfo[]))
  (define-method-port
    get-interface
    System.Reflection.Emit.TypeBuilder
    GetInterface
    (System.Type System.String System.Boolean))
  (define-method-port
    define-method
    System.Reflection.Emit.TypeBuilder
    DefineMethod
    (System.Reflection.Emit.MethodBuilder
      System.String
      System.Reflection.MethodAttributes
      System.Reflection.CallingConventions)
    (System.Reflection.Emit.MethodBuilder
      System.String
      System.Reflection.MethodAttributes)
    (System.Reflection.Emit.MethodBuilder
      System.String
      System.Reflection.MethodAttributes
      System.Reflection.CallingConventions
      System.Type
      System.Type[]
      System.Type[]
      System.Type[]
      System.Type[][]
      System.Type[][])
    (System.Reflection.Emit.MethodBuilder
      System.String
      System.Reflection.MethodAttributes
      System.Reflection.CallingConventions
      System.Type
      System.Type[])
    (System.Reflection.Emit.MethodBuilder
      System.String
      System.Reflection.MethodAttributes
      System.Type
      System.Type[]))
  (define-method-port
    add-declarative-security
    System.Reflection.Emit.TypeBuilder
    AddDeclarativeSecurity
    (System.Void
      System.Security.Permissions.SecurityAction
      System.Security.PermissionSet))
  (define-method-port
    define-generic-parameters
    System.Reflection.Emit.TypeBuilder
    DefineGenericParameters
    (System.Reflection.Emit.GenericTypeParameterBuilder[]
      System.String[]))
  (define-method-port
    get-member
    System.Reflection.Emit.TypeBuilder
    GetMember
    (System.Reflection.MemberInfo[]
      System.String
      System.Reflection.MemberTypes
      System.Reflection.BindingFlags))
  (define-method-port
    define-nested-type
    System.Reflection.Emit.TypeBuilder
    DefineNestedType
    (System.Reflection.Emit.TypeBuilder
      System.String
      System.Reflection.TypeAttributes
      System.Type
      System.Reflection.Emit.PackingSize)
    (System.Reflection.Emit.TypeBuilder
      System.String
      System.Reflection.TypeAttributes
      System.Type
      System.Int32)
    (System.Reflection.Emit.TypeBuilder
      System.String
      System.Reflection.TypeAttributes
      System.Type
      System.Type[])
    (System.Reflection.Emit.TypeBuilder
      System.String
      System.Reflection.TypeAttributes
      System.Type)
    (System.Reflection.Emit.TypeBuilder
      System.String
      System.Reflection.TypeAttributes)
    (System.Reflection.Emit.TypeBuilder System.String))
  (define-method-port
    is-subclass-of?
    System.Reflection.Emit.TypeBuilder
    IsSubclassOf
    (System.Boolean System.Type))
  (define-method-port
    get-nested-types
    System.Reflection.Emit.TypeBuilder
    GetNestedTypes
    (System.Type[] System.Reflection.BindingFlags))
  (define-method-port
    get-constructors
    System.Reflection.Emit.TypeBuilder
    GetConstructors
    (System.Reflection.ConstructorInfo[]
      System.Reflection.BindingFlags))
  (define-method-port
    define-uninitialized-data
    System.Reflection.Emit.TypeBuilder
    DefineUninitializedData
    (System.Reflection.Emit.FieldBuilder
      System.String
      System.Int32
      System.Reflection.FieldAttributes))
  (define-method-port
    is-defined?
    System.Reflection.Emit.TypeBuilder
    IsDefined
    (System.Boolean System.Type System.Boolean))
  (define-method-port
    make-by-ref-type
    System.Reflection.Emit.TypeBuilder
    MakeByRefType
    (System.Type))
  (define-method-port
    get-methods
    System.Reflection.Emit.TypeBuilder
    GetMethods
    (System.Reflection.MethodInfo[] System.Reflection.BindingFlags))
  (define-method-port
    get-custom-attributes
    System.Reflection.Emit.TypeBuilder
    GetCustomAttributes
    (System.Object[] System.Type System.Boolean)
    (System.Object[] System.Boolean))
  (define-method-port
    make-pointer-type
    System.Reflection.Emit.TypeBuilder
    MakePointerType
    (System.Type))
  (define-method-port
    define-property
    System.Reflection.Emit.TypeBuilder
    DefineProperty
    (System.Reflection.Emit.PropertyBuilder
      System.String
      System.Reflection.PropertyAttributes
      System.Type
      System.Type[]
      System.Type[]
      System.Type[]
      System.Type[][]
      System.Type[][])
    (System.Reflection.Emit.PropertyBuilder
      System.String
      System.Reflection.PropertyAttributes
      System.Type
      System.Type[]))
  (define-method-port
    create-type
    System.Reflection.Emit.TypeBuilder
    CreateType
    (System.Type))
  (define-method-port
    get-element-type
    System.Reflection.Emit.TypeBuilder
    GetElementType
    (System.Type))
  (define-method-port
    define-constructor
    System.Reflection.Emit.TypeBuilder
    DefineConstructor
    (System.Reflection.Emit.ConstructorBuilder
      System.Reflection.MethodAttributes
      System.Reflection.CallingConventions
      System.Type[]
      System.Type[][]
      System.Type[][])
    (System.Reflection.Emit.ConstructorBuilder
      System.Reflection.MethodAttributes
      System.Reflection.CallingConventions
      System.Type[]))
  (define-method-port
    get-fields
    System.Reflection.Emit.TypeBuilder
    GetFields
    (System.Reflection.FieldInfo[] System.Reflection.BindingFlags))
  (define-method-port
    define-pinvoke-method
    System.Reflection.Emit.TypeBuilder
    DefinePInvokeMethod
    (System.Reflection.Emit.MethodBuilder
      System.String
      System.String
      System.Reflection.MethodAttributes
      System.Reflection.CallingConventions
      System.Type
      System.Type[]
      System.Runtime.InteropServices.CallingConvention
      System.Runtime.InteropServices.CharSet)
    (System.Reflection.Emit.MethodBuilder
      System.String
      System.String
      System.String
      System.Reflection.MethodAttributes
      System.Reflection.CallingConventions
      System.Type
      System.Type[]
      System.Type[]
      System.Type[]
      System.Type[][]
      System.Type[][]
      System.Runtime.InteropServices.CallingConvention
      System.Runtime.InteropServices.CharSet)
    (System.Reflection.Emit.MethodBuilder
      System.String
      System.String
      System.String
      System.Reflection.MethodAttributes
      System.Reflection.CallingConventions
      System.Type
      System.Type[]
      System.Runtime.InteropServices.CallingConvention
      System.Runtime.InteropServices.CharSet))
  (define-method-port
    get-interface-map
    System.Reflection.Emit.TypeBuilder
    GetInterfaceMap
    (System.Reflection.InterfaceMapping System.Type))
  (define-method-port
    to-string
    System.Reflection.Emit.TypeBuilder
    ToString
    (System.String))
  (define-method-port
    set-parent
    System.Reflection.Emit.TypeBuilder
    SetParent
    (System.Void System.Type))
  (define-method-port
    is-assignable-from?
    System.Reflection.Emit.TypeBuilder
    IsAssignableFrom
    (System.Boolean System.Type))
  (define-method-port
    get-field
    System.Reflection.Emit.TypeBuilder
    GetField
    (static:
      System.Reflection.FieldInfo
      System.Type
      System.Reflection.FieldInfo)
    (System.Reflection.FieldInfo
      System.String
      System.Reflection.BindingFlags))
  (define-field-port
    unspecified-type-size
    #f
    #f
    (static:)
    System.Reflection.Emit.TypeBuilder
    UnspecifiedTypeSize
    System.Int32)
  (define-field-port
    assembly
    #f
    #f
    (property:)
    System.Reflection.Emit.TypeBuilder
    Assembly
    System.Reflection.Assembly)
  (define-field-port
    assembly-qualified-name
    #f
    #f
    (property:)
    System.Reflection.Emit.TypeBuilder
    AssemblyQualifiedName
    System.String)
  (define-field-port
    base-type
    #f
    #f
    (property:)
    System.Reflection.Emit.TypeBuilder
    BaseType
    System.Type)
  (define-field-port
    declaring-type
    #f
    #f
    (property:)
    System.Reflection.Emit.TypeBuilder
    DeclaringType
    System.Type)
  (define-field-port
    underlying-system-type
    #f
    #f
    (property:)
    System.Reflection.Emit.TypeBuilder
    UnderlyingSystemType
    System.Type)
  (define-field-port
    full-name
    #f
    #f
    (property:)
    System.Reflection.Emit.TypeBuilder
    FullName
    System.String)
  (define-field-port
    guid
    #f
    #f
    (property:)
    System.Reflection.Emit.TypeBuilder
    GUID
    System.Guid)
  (define-field-port
    module
    #f
    #f
    (property:)
    System.Reflection.Emit.TypeBuilder
    Module
    System.Reflection.Module)
  (define-field-port
    name
    #f
    #f
    (property:)
    System.Reflection.Emit.TypeBuilder
    Name
    System.String)
  (define-field-port
    namespace
    #f
    #f
    (property:)
    System.Reflection.Emit.TypeBuilder
    Namespace
    System.String)
  (define-field-port
    packing-size
    #f
    #f
    (property:)
    System.Reflection.Emit.TypeBuilder
    PackingSize
    System.Reflection.Emit.PackingSize)
  (define-field-port
    size
    #f
    #f
    (property:)
    System.Reflection.Emit.TypeBuilder
    Size
    System.Int32)
  (define-field-port
    reflected-type
    #f
    #f
    (property:)
    System.Reflection.Emit.TypeBuilder
    ReflectedType
    System.Type)
  (define-field-port
    type-handle
    #f
    #f
    (property:)
    System.Reflection.Emit.TypeBuilder
    TypeHandle
    System.RuntimeTypeHandle)
  (define-field-port
    type-token
    #f
    #f
    (property:)
    System.Reflection.Emit.TypeBuilder
    TypeToken
    System.Reflection.Emit.TypeToken)
  (define-field-port
    contains-generic-parameters?
    #f
    #f
    (property:)
    System.Reflection.Emit.TypeBuilder
    ContainsGenericParameters
    System.Boolean)
  (define-field-port
    is-generic-parameter?
    #f
    #f
    (property:)
    System.Reflection.Emit.TypeBuilder
    IsGenericParameter
    System.Boolean)
  (define-field-port
    generic-parameter-attributes
    #f
    #f
    (property:)
    System.Reflection.Emit.TypeBuilder
    GenericParameterAttributes
    System.Reflection.GenericParameterAttributes)
  (define-field-port
    is-generic-type-definition?
    #f
    #f
    (property:)
    System.Reflection.Emit.TypeBuilder
    IsGenericTypeDefinition
    System.Boolean)
  (define-field-port
    is-generic-type?
    #f
    #f
    (property:)
    System.Reflection.Emit.TypeBuilder
    IsGenericType
    System.Boolean)
  (define-field-port
    generic-parameter-position
    #f
    #f
    (property:)
    System.Reflection.Emit.TypeBuilder
    GenericParameterPosition
    System.Int32)
  (define-field-port
    declaring-method
    #f
    #f
    (property:)
    System.Reflection.Emit.TypeBuilder
    DeclaringMethod
    System.Reflection.MethodBase))
