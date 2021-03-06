(library (system runtime serialization formatters binary type-metadata)
  (export is?
          type-metadata?
          is-compatible?
          write-object-data
          write-type-data
          write-assemblies
          type-assembly-name-get
          type-assembly-name-set!
          type-assembly-name-update!
          instance-type-name-get
          instance-type-name-set!
          instance-type-name-update!
          requires-types?)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is
      System.Runtime.Serialization.Formatters.Binary.TypeMetadata
      a))
  (define (type-metadata? a)
    (clr-is
      System.Runtime.Serialization.Formatters.Binary.TypeMetadata
      a))
  (define-method-port
    is-compatible?
    System.Runtime.Serialization.Formatters.Binary.TypeMetadata
    IsCompatible
    (System.Boolean
      System.Runtime.Serialization.Formatters.Binary.TypeMetadata))
  (define-method-port
    write-object-data
    System.Runtime.Serialization.Formatters.Binary.TypeMetadata
    WriteObjectData
    (System.Void
      System.Runtime.Serialization.Formatters.Binary.ObjectWriter
      System.IO.BinaryWriter
      System.Object))
  (define-method-port
    write-type-data
    System.Runtime.Serialization.Formatters.Binary.TypeMetadata
    WriteTypeData
    (System.Void
      System.Runtime.Serialization.Formatters.Binary.ObjectWriter
      System.IO.BinaryWriter
      System.Boolean))
  (define-method-port
    write-assemblies
    System.Runtime.Serialization.Formatters.Binary.TypeMetadata
    WriteAssemblies
    (System.Void
      System.Runtime.Serialization.Formatters.Binary.ObjectWriter
      System.IO.BinaryWriter))
  (define-field-port
    type-assembly-name-get
    type-assembly-name-set!
    type-assembly-name-update!
    ()
    System.Runtime.Serialization.Formatters.Binary.TypeMetadata
    TypeAssemblyName
    System.String)
  (define-field-port
    instance-type-name-get
    instance-type-name-set!
    instance-type-name-update!
    ()
    System.Runtime.Serialization.Formatters.Binary.TypeMetadata
    InstanceTypeName
    System.String)
  (define-field-port
    requires-types?
    #f
    #f
    (property:)
    System.Runtime.Serialization.Formatters.Binary.TypeMetadata
    RequiresTypes
    System.Boolean))
