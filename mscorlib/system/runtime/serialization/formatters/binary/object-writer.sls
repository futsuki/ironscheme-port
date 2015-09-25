(library (system runtime serialization formatters binary object-writer)
  (export new
          is?
          object-writer?
          get-assembly-name-id
          get-assembly-id
          write-object-graph
          write-value
          write-type-spec
          write-queued-objects
          write-object-instance
          write-primitive-value
          write-assembly
          queue-object
          get-type-tag
          write-assembly-name
          write-type-code
          write-serialization-end)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Serialization.Formatters.Binary.ObjectWriter
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Runtime.Serialization.Formatters.Binary.ObjectWriter
      a))
  (define (object-writer? a)
    (clr-is
      System.Runtime.Serialization.Formatters.Binary.ObjectWriter
      a))
  (define-method-port
    get-assembly-name-id
    System.Runtime.Serialization.Formatters.Binary.ObjectWriter
    GetAssemblyNameId
    (System.Int32 System.String))
  (define-method-port
    get-assembly-id
    System.Runtime.Serialization.Formatters.Binary.ObjectWriter
    GetAssemblyId
    (System.Int32 System.Reflection.Assembly))
  (define-method-port
    write-object-graph
    System.Runtime.Serialization.Formatters.Binary.ObjectWriter
    WriteObjectGraph
    (System.Void
      System.IO.BinaryWriter
      System.Object
      System.Runtime.Remoting.Messaging.Header[]))
  (define-method-port
    write-value
    System.Runtime.Serialization.Formatters.Binary.ObjectWriter
    WriteValue
    (System.Void System.IO.BinaryWriter System.Type System.Object))
  (define-method-port
    write-type-spec
    System.Runtime.Serialization.Formatters.Binary.ObjectWriter
    WriteTypeSpec
    (System.Void System.IO.BinaryWriter System.Type))
  (define-method-port
    write-queued-objects
    System.Runtime.Serialization.Formatters.Binary.ObjectWriter
    WriteQueuedObjects
    (System.Void System.IO.BinaryWriter))
  (define-method-port
    write-object-instance
    System.Runtime.Serialization.Formatters.Binary.ObjectWriter
    WriteObjectInstance
    (System.Void System.IO.BinaryWriter System.Object System.Boolean))
  (define-method-port
    write-primitive-value
    System.Runtime.Serialization.Formatters.Binary.ObjectWriter
    WritePrimitiveValue
    (static: System.Void System.IO.BinaryWriter System.Object))
  (define-method-port
    write-assembly
    System.Runtime.Serialization.Formatters.Binary.ObjectWriter
    WriteAssembly
    (System.Int32 System.IO.BinaryWriter System.Reflection.Assembly))
  (define-method-port
    queue-object
    System.Runtime.Serialization.Formatters.Binary.ObjectWriter
    QueueObject
    (System.Void System.Object))
  (define-method-port
    get-type-tag
    System.Runtime.Serialization.Formatters.Binary.ObjectWriter
    GetTypeTag
    (static:
      System.Runtime.Serialization.Formatters.Binary.TypeTag
      System.Type))
  (define-method-port
    write-assembly-name
    System.Runtime.Serialization.Formatters.Binary.ObjectWriter
    WriteAssemblyName
    (System.Int32 System.IO.BinaryWriter System.String))
  (define-method-port
    write-type-code
    System.Runtime.Serialization.Formatters.Binary.ObjectWriter
    WriteTypeCode
    (static: System.Void System.IO.BinaryWriter System.Type))
  (define-method-port
    write-serialization-end
    System.Runtime.Serialization.Formatters.Binary.ObjectWriter
    WriteSerializationEnd
    (static: System.Void System.IO.BinaryWriter)))
