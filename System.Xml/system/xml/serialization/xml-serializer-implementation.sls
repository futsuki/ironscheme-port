(library (system xml serialization xml-serializer-implementation)
  (export is?
          xml-serializer-implementation?
          can-serialize?
          get-serializer
          reader
          read-methods
          typed-serializers
          write-methods
          writer)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Xml.Serialization.XmlSerializerImplementation a))
  (define (xml-serializer-implementation? a)
    (clr-is System.Xml.Serialization.XmlSerializerImplementation a))
  (define-method-port
    can-serialize?
    System.Xml.Serialization.XmlSerializerImplementation
    CanSerialize
    (System.Boolean System.Type))
  (define-method-port
    get-serializer
    System.Xml.Serialization.XmlSerializerImplementation
    GetSerializer
    (System.Xml.Serialization.XmlSerializer System.Type))
  (define-field-port
    reader
    #f
    #f
    (property:)
    System.Xml.Serialization.XmlSerializerImplementation
    Reader
    System.Xml.Serialization.XmlSerializationReader)
  (define-field-port
    read-methods
    #f
    #f
    (property:)
    System.Xml.Serialization.XmlSerializerImplementation
    ReadMethods
    System.Collections.Hashtable)
  (define-field-port
    typed-serializers
    #f
    #f
    (property:)
    System.Xml.Serialization.XmlSerializerImplementation
    TypedSerializers
    System.Collections.Hashtable)
  (define-field-port
    write-methods
    #f
    #f
    (property:)
    System.Xml.Serialization.XmlSerializerImplementation
    WriteMethods
    System.Collections.Hashtable)
  (define-field-port
    writer
    #f
    #f
    (property:)
    System.Xml.Serialization.XmlSerializerImplementation
    Writer
    System.Xml.Serialization.XmlSerializationWriter))
