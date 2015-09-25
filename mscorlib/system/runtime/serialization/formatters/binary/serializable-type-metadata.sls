(library (system
          runtime
          serialization
          formatters
          binary
          serializable-type-metadata)
  (export new
          is?
          serializable-type-metadata?
          is-compatible?
          write-object-data
          write-type-data
          write-assemblies
          requires-types?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Serialization.Formatters.Binary.SerializableTypeMetadata
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Runtime.Serialization.Formatters.Binary.SerializableTypeMetadata
      a))
  (define (serializable-type-metadata? a)
    (clr-is
      System.Runtime.Serialization.Formatters.Binary.SerializableTypeMetadata
      a))
  (define-method-port
    is-compatible?
    System.Runtime.Serialization.Formatters.Binary.SerializableTypeMetadata
    IsCompatible
    (System.Boolean
      System.Runtime.Serialization.Formatters.Binary.TypeMetadata))
  (define-method-port
    write-object-data
    System.Runtime.Serialization.Formatters.Binary.SerializableTypeMetadata
    WriteObjectData
    (System.Void
      System.Runtime.Serialization.Formatters.Binary.ObjectWriter
      System.IO.BinaryWriter
      System.Object))
  (define-method-port
    write-type-data
    System.Runtime.Serialization.Formatters.Binary.SerializableTypeMetadata
    WriteTypeData
    (System.Void
      System.Runtime.Serialization.Formatters.Binary.ObjectWriter
      System.IO.BinaryWriter
      System.Boolean))
  (define-method-port
    write-assemblies
    System.Runtime.Serialization.Formatters.Binary.SerializableTypeMetadata
    WriteAssemblies
    (System.Void
      System.Runtime.Serialization.Formatters.Binary.ObjectWriter
      System.IO.BinaryWriter))
  (define-field-port
    requires-types?
    #f
    #f
    (property:)
    System.Runtime.Serialization.Formatters.Binary.SerializableTypeMetadata
    RequiresTypes
    System.Boolean))
