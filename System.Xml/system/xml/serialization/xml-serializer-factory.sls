(library (system xml serialization xml-serializer-factory)
  (export new is? xml-serializer-factory? create-serializer)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.Serialization.XmlSerializerFactory
             a
             ...)))))
  (define (is? a)
    (clr-is System.Xml.Serialization.XmlSerializerFactory a))
  (define (xml-serializer-factory? a)
    (clr-is System.Xml.Serialization.XmlSerializerFactory a))
  (define-method-port
    create-serializer
    System.Xml.Serialization.XmlSerializerFactory
    CreateSerializer
    (System.Xml.Serialization.XmlSerializer
      System.Type
      System.Xml.Serialization.XmlAttributeOverrides
      System.Type[]
      System.Xml.Serialization.XmlRootAttribute
      System.String
      System.String
      System.Security.Policy.Evidence)
    (System.Xml.Serialization.XmlSerializer
      System.Type
      System.Xml.Serialization.XmlAttributeOverrides
      System.Type[]
      System.Xml.Serialization.XmlRootAttribute
      System.String)
    (System.Xml.Serialization.XmlSerializer
      System.Type
      System.Xml.Serialization.XmlRootAttribute)
    (System.Xml.Serialization.XmlSerializer
      System.Type
      System.Xml.Serialization.XmlAttributeOverrides)
    (System.Xml.Serialization.XmlSerializer System.Type System.Type[])
    (System.Xml.Serialization.XmlSerializer System.Type System.String)
    (System.Xml.Serialization.XmlSerializer
      System.Xml.Serialization.XmlTypeMapping)
    (System.Xml.Serialization.XmlSerializer System.Type)))
