(library (system xml serialization xml-serializer)
  (export new
          is?
          xml-serializer?
          from-mappings
          can-deserialize?
          from-types
          deserialize
          generate-serializer
          get-xml-serializer-assembly-name
          serialize)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.Serialization.XmlSerializer a ...)))))
  (define (is? a) (clr-is System.Xml.Serialization.XmlSerializer a))
  (define (xml-serializer? a)
    (clr-is System.Xml.Serialization.XmlSerializer a))
  (define-method-port
    from-mappings
    System.Xml.Serialization.XmlSerializer
    FromMappings
    (static:
      System.Xml.Serialization.XmlSerializer[]
      System.Xml.Serialization.XmlMapping[]
      System.Type)
    (static:
      System.Xml.Serialization.XmlSerializer[]
      System.Xml.Serialization.XmlMapping[]
      System.Security.Policy.Evidence)
    (static:
      System.Xml.Serialization.XmlSerializer[]
      System.Xml.Serialization.XmlMapping[]))
  (define-method-port
    can-deserialize?
    System.Xml.Serialization.XmlSerializer
    CanDeserialize
    (System.Boolean System.Xml.XmlReader))
  (define-method-port
    from-types
    System.Xml.Serialization.XmlSerializer
    FromTypes
    (static: System.Xml.Serialization.XmlSerializer[] System.Type[]))
  (define-method-port
    deserialize
    System.Xml.Serialization.XmlSerializer
    Deserialize
    (System.Object
      System.Xml.XmlReader
      System.Xml.Serialization.XmlDeserializationEvents)
    (System.Object System.Xml.XmlReader System.String)
    (System.Object
      System.Xml.XmlReader
      System.String
      System.Xml.Serialization.XmlDeserializationEvents)
    (System.Object System.Xml.XmlReader)
    (System.Object System.IO.TextReader)
    (System.Object System.IO.Stream))
  (define-method-port
    generate-serializer
    System.Xml.Serialization.XmlSerializer
    GenerateSerializer
    (static:
      System.Reflection.Assembly
      System.Type[]
      System.Xml.Serialization.XmlMapping[]
      System.CodeDom.Compiler.CompilerParameters)
    (static:
      System.Reflection.Assembly
      System.Type[]
      System.Xml.Serialization.XmlMapping[]))
  (define-method-port
    get-xml-serializer-assembly-name
    System.Xml.Serialization.XmlSerializer
    GetXmlSerializerAssemblyName
    (static: System.String System.Type System.String)
    (static: System.String System.Type))
  (define-method-port
    serialize
    System.Xml.Serialization.XmlSerializer
    Serialize
    (System.Void
      System.Xml.XmlWriter
      System.Object
      System.Xml.Serialization.XmlSerializerNamespaces
      System.String
      System.String)
    (System.Void
      System.Xml.XmlWriter
      System.Object
      System.Xml.Serialization.XmlSerializerNamespaces
      System.String)
    (System.Void
      System.Xml.XmlWriter
      System.Object
      System.Xml.Serialization.XmlSerializerNamespaces)
    (System.Void
      System.IO.TextWriter
      System.Object
      System.Xml.Serialization.XmlSerializerNamespaces)
    (System.Void
      System.IO.Stream
      System.Object
      System.Xml.Serialization.XmlSerializerNamespaces)
    (System.Void System.Xml.XmlWriter System.Object)
    (System.Void System.IO.TextWriter System.Object)
    (System.Void System.IO.Stream System.Object)))
