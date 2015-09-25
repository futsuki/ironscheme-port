(library (system
          runtime
          serialization
          formatters
          binary
          member-type-metadata)
  (export new
          is?
          member-type-metadata?
          write-object-data
          write-type-data
          write-assemblies)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Serialization.Formatters.Binary.MemberTypeMetadata
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Runtime.Serialization.Formatters.Binary.MemberTypeMetadata
      a))
  (define (member-type-metadata? a)
    (clr-is
      System.Runtime.Serialization.Formatters.Binary.MemberTypeMetadata
      a))
  (define-method-port
    write-object-data
    System.Runtime.Serialization.Formatters.Binary.MemberTypeMetadata
    WriteObjectData
    (System.Void
      System.Runtime.Serialization.Formatters.Binary.ObjectWriter
      System.IO.BinaryWriter
      System.Object))
  (define-method-port
    write-type-data
    System.Runtime.Serialization.Formatters.Binary.MemberTypeMetadata
    WriteTypeData
    (System.Void
      System.Runtime.Serialization.Formatters.Binary.ObjectWriter
      System.IO.BinaryWriter
      System.Boolean))
  (define-method-port
    write-assemblies
    System.Runtime.Serialization.Formatters.Binary.MemberTypeMetadata
    WriteAssemblies
    (System.Void
      System.Runtime.Serialization.Formatters.Binary.ObjectWriter
      System.IO.BinaryWriter)))
