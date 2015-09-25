(library (system reflection emit assembly-builder)
  (export is?
          assembly-builder?
          get-manifest-resource-stream
          get-dynamic-module
          define-unmanaged-resource
          get-manifest-resource-info
          define-resource
          get-files
          save
          get-exported-types
          set-entry-point
          set-custom-attribute
          define-dynamic-module
          get-manifest-resource-names
          define-version-info-resource
          get-file
          add-resource-file
          code-base
          entry-point
          location
          image-runtime-version
          reflection-only?)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Reflection.Emit.AssemblyBuilder a))
  (define (assembly-builder? a)
    (clr-is System.Reflection.Emit.AssemblyBuilder a))
  (define-method-port
    get-manifest-resource-stream
    System.Reflection.Emit.AssemblyBuilder
    GetManifestResourceStream
    (System.IO.Stream System.Type System.String)
    (System.IO.Stream System.String))
  (define-method-port
    get-dynamic-module
    System.Reflection.Emit.AssemblyBuilder
    GetDynamicModule
    (System.Reflection.Emit.ModuleBuilder System.String))
  (define-method-port
    define-unmanaged-resource
    System.Reflection.Emit.AssemblyBuilder
    DefineUnmanagedResource
    (System.Void System.String)
    (System.Void System.Byte[]))
  (define-method-port
    get-manifest-resource-info
    System.Reflection.Emit.AssemblyBuilder
    GetManifestResourceInfo
    (System.Reflection.ManifestResourceInfo System.String))
  (define-method-port
    define-resource
    System.Reflection.Emit.AssemblyBuilder
    DefineResource
    (System.Resources.IResourceWriter
      System.String
      System.String
      System.String
      System.Reflection.ResourceAttributes)
    (System.Resources.IResourceWriter
      System.String
      System.String
      System.String))
  (define-method-port
    get-files
    System.Reflection.Emit.AssemblyBuilder
    GetFiles
    (System.IO.FileStream[] System.Boolean))
  (define-method-port
    save
    System.Reflection.Emit.AssemblyBuilder
    Save
    (System.Void System.String)
    (System.Void
      System.String
      System.Reflection.PortableExecutableKinds
      System.Reflection.ImageFileMachine))
  (define-method-port
    get-exported-types
    System.Reflection.Emit.AssemblyBuilder
    GetExportedTypes
    (System.Type[]))
  (define-method-port
    set-entry-point
    System.Reflection.Emit.AssemblyBuilder
    SetEntryPoint
    (System.Void
      System.Reflection.MethodInfo
      System.Reflection.Emit.PEFileKinds)
    (System.Void System.Reflection.MethodInfo))
  (define-method-port
    set-custom-attribute
    System.Reflection.Emit.AssemblyBuilder
    SetCustomAttribute
    (System.Void System.Reflection.ConstructorInfo System.Byte[])
    (System.Void System.Reflection.Emit.CustomAttributeBuilder))
  (define-method-port
    define-dynamic-module
    System.Reflection.Emit.AssemblyBuilder
    DefineDynamicModule
    (System.Reflection.Emit.ModuleBuilder
      System.String
      System.String
      System.Boolean)
    (System.Reflection.Emit.ModuleBuilder System.String System.String)
    (System.Reflection.Emit.ModuleBuilder System.String System.Boolean)
    (System.Reflection.Emit.ModuleBuilder System.String))
  (define-method-port
    get-manifest-resource-names
    System.Reflection.Emit.AssemblyBuilder
    GetManifestResourceNames
    (System.String[]))
  (define-method-port
    define-version-info-resource
    System.Reflection.Emit.AssemblyBuilder
    DefineVersionInfoResource
    (System.Void
      System.String
      System.String
      System.String
      System.String
      System.String)
    (System.Void))
  (define-method-port
    get-file
    System.Reflection.Emit.AssemblyBuilder
    GetFile
    (System.IO.FileStream System.String))
  (define-method-port
    add-resource-file
    System.Reflection.Emit.AssemblyBuilder
    AddResourceFile
    (System.Void
      System.String
      System.String
      System.Reflection.ResourceAttributes)
    (System.Void System.String System.String))
  (define-field-port
    code-base
    #f
    #f
    (property:)
    System.Reflection.Emit.AssemblyBuilder
    CodeBase
    System.String)
  (define-field-port
    entry-point
    #f
    #f
    (property:)
    System.Reflection.Emit.AssemblyBuilder
    EntryPoint
    System.Reflection.MethodInfo)
  (define-field-port
    location
    #f
    #f
    (property:)
    System.Reflection.Emit.AssemblyBuilder
    Location
    System.String)
  (define-field-port
    image-runtime-version
    #f
    #f
    (property:)
    System.Reflection.Emit.AssemblyBuilder
    ImageRuntimeVersion
    System.String)
  (define-field-port
    reflection-only?
    #f
    #f
    (property:)
    System.Reflection.Emit.AssemblyBuilder
    ReflectionOnly
    System.Boolean))
