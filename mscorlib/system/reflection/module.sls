(library (system reflection module)
  (export is?
          module?
          get-type
          resolve-field
          get-types
          get-method
          get-signer-certificate
          find-types
          get-object-data
          is-resource?
          resolve-signature
          get-pekind
          is-defined?
          resolve-method
          get-methods
          get-custom-attributes
          resolve-string
          get-fields
          resolve-type
          to-string
          resolve-member
          get-field
          filter-type-name
          filter-type-name-ignore-case
          assembly
          fully-qualified-name
          name
          scope-name
          module-handle
          metadata-token
          mdstream-version
          module-version-id)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Reflection.Module a))
  (define (module? a) (clr-is System.Reflection.Module a))
  (define-method-port
    get-type
    System.Reflection.Module
    GetType
    (System.Type System.String System.Boolean System.Boolean)
    (System.Type System.String System.Boolean)
    (System.Type System.String))
  (define-method-port
    resolve-field
    System.Reflection.Module
    ResolveField
    (System.Reflection.FieldInfo
      System.Int32
      System.Type[]
      System.Type[])
    (System.Reflection.FieldInfo System.Int32))
  (define-method-port
    get-types
    System.Reflection.Module
    GetTypes
    (System.Type[]))
  (define-method-port
    get-method
    System.Reflection.Module
    GetMethod
    (System.Reflection.MethodInfo
      System.String
      System.Reflection.BindingFlags
      System.Reflection.Binder
      System.Reflection.CallingConventions
      System.Type[]
      System.Reflection.ParameterModifier[])
    (System.Reflection.MethodInfo System.String System.Type[])
    (System.Reflection.MethodInfo System.String))
  (define-method-port
    get-signer-certificate
    System.Reflection.Module
    GetSignerCertificate
    (System.Security.Cryptography.X509Certificates.X509Certificate))
  (define-method-port
    find-types
    System.Reflection.Module
    FindTypes
    (System.Type[] System.Reflection.TypeFilter System.Object))
  (define-method-port
    get-object-data
    System.Reflection.Module
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-method-port
    is-resource?
    System.Reflection.Module
    IsResource
    (System.Boolean))
  (define-method-port
    resolve-signature
    System.Reflection.Module
    ResolveSignature
    (System.Byte[] System.Int32))
  (define-method-port
    get-pekind
    System.Reflection.Module
    GetPEKind
    (System.Void
      System.Reflection.PortableExecutableKinds&
      System.Reflection.ImageFileMachine&))
  (define-method-port
    is-defined?
    System.Reflection.Module
    IsDefined
    (System.Boolean System.Type System.Boolean))
  (define-method-port
    resolve-method
    System.Reflection.Module
    ResolveMethod
    (System.Reflection.MethodBase
      System.Int32
      System.Type[]
      System.Type[])
    (System.Reflection.MethodBase System.Int32))
  (define-method-port
    get-methods
    System.Reflection.Module
    GetMethods
    (System.Reflection.MethodInfo[] System.Reflection.BindingFlags)
    (System.Reflection.MethodInfo[]))
  (define-method-port
    get-custom-attributes
    System.Reflection.Module
    GetCustomAttributes
    (System.Object[] System.Type System.Boolean)
    (System.Object[] System.Boolean))
  (define-method-port
    resolve-string
    System.Reflection.Module
    ResolveString
    (System.String System.Int32))
  (define-method-port
    get-fields
    System.Reflection.Module
    GetFields
    (System.Reflection.FieldInfo[] System.Reflection.BindingFlags)
    (System.Reflection.FieldInfo[]))
  (define-method-port
    resolve-type
    System.Reflection.Module
    ResolveType
    (System.Type System.Int32 System.Type[] System.Type[])
    (System.Type System.Int32))
  (define-method-port
    to-string
    System.Reflection.Module
    ToString
    (System.String))
  (define-method-port
    resolve-member
    System.Reflection.Module
    ResolveMember
    (System.Reflection.MemberInfo
      System.Int32
      System.Type[]
      System.Type[])
    (System.Reflection.MemberInfo System.Int32))
  (define-method-port
    get-field
    System.Reflection.Module
    GetField
    (System.Reflection.FieldInfo
      System.String
      System.Reflection.BindingFlags)
    (System.Reflection.FieldInfo System.String))
  (define-field-port
    filter-type-name
    #f
    #f
    (static:)
    System.Reflection.Module
    FilterTypeName
    System.Reflection.TypeFilter)
  (define-field-port
    filter-type-name-ignore-case
    #f
    #f
    (static:)
    System.Reflection.Module
    FilterTypeNameIgnoreCase
    System.Reflection.TypeFilter)
  (define-field-port
    assembly
    #f
    #f
    (property:)
    System.Reflection.Module
    Assembly
    System.Reflection.Assembly)
  (define-field-port
    fully-qualified-name
    #f
    #f
    (property:)
    System.Reflection.Module
    FullyQualifiedName
    System.String)
  (define-field-port
    name
    #f
    #f
    (property:)
    System.Reflection.Module
    Name
    System.String)
  (define-field-port
    scope-name
    #f
    #f
    (property:)
    System.Reflection.Module
    ScopeName
    System.String)
  (define-field-port
    module-handle
    #f
    #f
    (property:)
    System.Reflection.Module
    ModuleHandle
    System.ModuleHandle)
  (define-field-port
    metadata-token
    #f
    #f
    (property:)
    System.Reflection.Module
    MetadataToken
    System.Int32)
  (define-field-port
    mdstream-version
    #f
    #f
    (property:)
    System.Reflection.Module
    MDStreamVersion
    System.Int32)
  (define-field-port
    module-version-id
    #f
    #f
    (property:)
    System.Reflection.Module
    ModuleVersionId
    System.Guid))