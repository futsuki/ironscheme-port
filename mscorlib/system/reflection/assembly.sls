(library (system reflection assembly)
  (export is?
          assembly?
          get-type
          get-manifest-resource-stream
          get-assembly
          load-with-partial-name
          load
          get-file
          get-module
          get-referenced-assemblies
          get-types
          get-manifest-resource-info
          load-module
          get-name
          get-loaded-modules
          reflection-only-load-from
          get-satellite-assembly
          create-qualified-name
          get-manifest-resource-names
          load-from
          get-object-data
          get-files
          get-executing-assembly
          get-exported-types
          load-file
          is-defined?
          get-custom-attributes
          get-calling-assembly
          get-modules
          get-entry-assembly
          create-instance
          to-string
          reflection-only-load
          code-base
          escaped-code-base
          full-name
          entry-point
          evidence
          global-assembly-cache?
          location
          image-runtime-version
          host-context
          manifest-module
          reflection-only?)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Reflection.Assembly a))
  (define (assembly? a) (clr-is System.Reflection.Assembly a))
  (define-method-port
    get-type
    System.Reflection.Assembly
    GetType
    (System.Type System.String System.Boolean System.Boolean)
    (System.Type System.String)
    (System.Type System.String System.Boolean))
  (define-method-port
    get-manifest-resource-stream
    System.Reflection.Assembly
    GetManifestResourceStream
    (System.IO.Stream System.Type System.String)
    (System.IO.Stream System.String))
  (define-method-port
    get-assembly
    System.Reflection.Assembly
    GetAssembly
    (static: System.Reflection.Assembly System.Type))
  (define-method-port
    load-with-partial-name
    System.Reflection.Assembly
    LoadWithPartialName
    (static:
      System.Reflection.Assembly
      System.String
      System.Security.Policy.Evidence)
    (static: System.Reflection.Assembly System.String))
  (define-method-port
    load
    System.Reflection.Assembly
    Load
    (static:
      System.Reflection.Assembly
      System.Byte[]
      System.Byte[]
      System.Security.Policy.Evidence)
    (static: System.Reflection.Assembly System.Byte[] System.Byte[])
    (static: System.Reflection.Assembly System.Byte[])
    (static:
      System.Reflection.Assembly
      System.Reflection.AssemblyName
      System.Security.Policy.Evidence)
    (static: System.Reflection.Assembly System.Reflection.AssemblyName)
    (static:
      System.Reflection.Assembly
      System.String
      System.Security.Policy.Evidence)
    (static: System.Reflection.Assembly System.String))
  (define-method-port
    get-file
    System.Reflection.Assembly
    GetFile
    (System.IO.FileStream System.String))
  (define-method-port
    get-module
    System.Reflection.Assembly
    GetModule
    (System.Reflection.Module System.String))
  (define-method-port
    get-referenced-assemblies
    System.Reflection.Assembly
    GetReferencedAssemblies
    (System.Reflection.AssemblyName[]))
  (define-method-port
    get-types
    System.Reflection.Assembly
    GetTypes
    (System.Type[]))
  (define-method-port
    get-manifest-resource-info
    System.Reflection.Assembly
    GetManifestResourceInfo
    (System.Reflection.ManifestResourceInfo System.String))
  (define-method-port
    load-module
    System.Reflection.Assembly
    LoadModule
    (System.Reflection.Module System.String System.Byte[] System.Byte[])
    (System.Reflection.Module System.String System.Byte[]))
  (define-method-port
    get-name
    System.Reflection.Assembly
    GetName
    (System.Reflection.AssemblyName)
    (System.Reflection.AssemblyName System.Boolean))
  (define-method-port
    get-loaded-modules
    System.Reflection.Assembly
    GetLoadedModules
    (System.Reflection.Module[] System.Boolean)
    (System.Reflection.Module[]))
  (define-method-port
    reflection-only-load-from
    System.Reflection.Assembly
    ReflectionOnlyLoadFrom
    (static: System.Reflection.Assembly System.String))
  (define-method-port
    get-satellite-assembly
    System.Reflection.Assembly
    GetSatelliteAssembly
    (System.Reflection.Assembly
      System.Globalization.CultureInfo
      System.Version)
    (System.Reflection.Assembly System.Globalization.CultureInfo))
  (define-method-port
    create-qualified-name
    System.Reflection.Assembly
    CreateQualifiedName
    (static: System.String System.String System.String))
  (define-method-port
    get-manifest-resource-names
    System.Reflection.Assembly
    GetManifestResourceNames
    (System.String[]))
  (define-method-port
    load-from
    System.Reflection.Assembly
    LoadFrom
    (static:
      System.Reflection.Assembly
      System.String
      System.Security.Policy.Evidence
      System.Byte[]
      System.Configuration.Assemblies.AssemblyHashAlgorithm)
    (static:
      System.Reflection.Assembly
      System.String
      System.Security.Policy.Evidence)
    (static: System.Reflection.Assembly System.String))
  (define-method-port
    get-object-data
    System.Reflection.Assembly
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-method-port
    get-files
    System.Reflection.Assembly
    GetFiles
    (System.IO.FileStream[] System.Boolean)
    (System.IO.FileStream[]))
  (define-method-port
    get-executing-assembly
    System.Reflection.Assembly
    GetExecutingAssembly
    (static: System.Reflection.Assembly))
  (define-method-port
    get-exported-types
    System.Reflection.Assembly
    GetExportedTypes
    (System.Type[]))
  (define-method-port
    load-file
    System.Reflection.Assembly
    LoadFile
    (static: System.Reflection.Assembly System.String)
    (static:
      System.Reflection.Assembly
      System.String
      System.Security.Policy.Evidence))
  (define-method-port
    is-defined?
    System.Reflection.Assembly
    IsDefined
    (System.Boolean System.Type System.Boolean))
  (define-method-port
    get-custom-attributes
    System.Reflection.Assembly
    GetCustomAttributes
    (System.Object[] System.Type System.Boolean)
    (System.Object[] System.Boolean))
  (define-method-port
    get-calling-assembly
    System.Reflection.Assembly
    GetCallingAssembly
    (static: System.Reflection.Assembly))
  (define-method-port
    get-modules
    System.Reflection.Assembly
    GetModules
    (System.Reflection.Module[] System.Boolean)
    (System.Reflection.Module[]))
  (define-method-port
    get-entry-assembly
    System.Reflection.Assembly
    GetEntryAssembly
    (static: System.Reflection.Assembly))
  (define-method-port
    create-instance
    System.Reflection.Assembly
    CreateInstance
    (System.Object
      System.String
      System.Boolean
      System.Reflection.BindingFlags
      System.Reflection.Binder
      System.Object[]
      System.Globalization.CultureInfo
      System.Object[])
    (System.Object System.String System.Boolean)
    (System.Object System.String))
  (define-method-port
    to-string
    System.Reflection.Assembly
    ToString
    (System.String))
  (define-method-port
    reflection-only-load
    System.Reflection.Assembly
    ReflectionOnlyLoad
    (static: System.Reflection.Assembly System.String)
    (static: System.Reflection.Assembly System.Byte[]))
  (define-field-port
    code-base
    #f
    #f
    (property:)
    System.Reflection.Assembly
    CodeBase
    System.String)
  (define-field-port
    escaped-code-base
    #f
    #f
    (property:)
    System.Reflection.Assembly
    EscapedCodeBase
    System.String)
  (define-field-port
    full-name
    #f
    #f
    (property:)
    System.Reflection.Assembly
    FullName
    System.String)
  (define-field-port
    entry-point
    #f
    #f
    (property:)
    System.Reflection.Assembly
    EntryPoint
    System.Reflection.MethodInfo)
  (define-field-port
    evidence
    #f
    #f
    (property:)
    System.Reflection.Assembly
    Evidence
    System.Security.Policy.Evidence)
  (define-field-port
    global-assembly-cache?
    #f
    #f
    (property:)
    System.Reflection.Assembly
    GlobalAssemblyCache
    System.Boolean)
  (define-field-port
    location
    #f
    #f
    (property:)
    System.Reflection.Assembly
    Location
    System.String)
  (define-field-port
    image-runtime-version
    #f
    #f
    (property:)
    System.Reflection.Assembly
    ImageRuntimeVersion
    System.String)
  (define-field-port
    host-context
    #f
    #f
    (property:)
    System.Reflection.Assembly
    HostContext
    System.Int64)
  (define-field-port
    manifest-module
    #f
    #f
    (property:)
    System.Reflection.Assembly
    ManifestModule
    System.Reflection.Module)
  (define-field-port
    reflection-only?
    #f
    #f
    (property:)
    System.Reflection.Assembly
    ReflectionOnly
    System.Boolean))
