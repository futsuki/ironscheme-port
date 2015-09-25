(library (system runtime serialization formatters binary object-reader)
  (export new
          is?
          object-reader?
          read-next-object?
          read-type
          read-primitive-type-value
          read-object-graph
          current-object)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Serialization.Formatters.Binary.ObjectReader
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Runtime.Serialization.Formatters.Binary.ObjectReader
      a))
  (define (object-reader? a)
    (clr-is
      System.Runtime.Serialization.Formatters.Binary.ObjectReader
      a))
  (define-method-port
    read-next-object?
    System.Runtime.Serialization.Formatters.Binary.ObjectReader
    ReadNextObject
    (System.Boolean System.IO.BinaryReader))
  (define-method-port
    read-type
    System.Runtime.Serialization.Formatters.Binary.ObjectReader
    ReadType
    (System.Type
      System.IO.BinaryReader
      System.Runtime.Serialization.Formatters.Binary.TypeTag))
  (define-method-port
    read-primitive-type-value
    System.Runtime.Serialization.Formatters.Binary.ObjectReader
    ReadPrimitiveTypeValue
    (static: System.Object System.IO.BinaryReader System.Type))
  (define-method-port
    read-object-graph
    System.Runtime.Serialization.Formatters.Binary.ObjectReader
    ReadObjectGraph
    (System.Void
      System.Runtime.Serialization.Formatters.Binary.BinaryElement
      System.IO.BinaryReader
      System.Boolean
      System.Object&
      System.Runtime.Remoting.Messaging.Header[]&)
    (System.Void
      System.IO.BinaryReader
      System.Boolean
      System.Object&
      System.Runtime.Remoting.Messaging.Header[]&))
  (define-field-port
    current-object
    #f
    #f
    (property:)
    System.Runtime.Serialization.Formatters.Binary.ObjectReader
    CurrentObject
    System.Object))
