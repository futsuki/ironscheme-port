(library (system xml serialization xml-type-mapping)
  (export is?
          xml-type-mapping?
          type-full-name
          type-name
          xsd-type-name
          xsd-type-namespace)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Xml.Serialization.XmlTypeMapping a))
  (define (xml-type-mapping? a)
    (clr-is System.Xml.Serialization.XmlTypeMapping a))
  (define-field-port
    type-full-name
    #f
    #f
    (property:)
    System.Xml.Serialization.XmlTypeMapping
    TypeFullName
    System.String)
  (define-field-port
    type-name
    #f
    #f
    (property:)
    System.Xml.Serialization.XmlTypeMapping
    TypeName
    System.String)
  (define-field-port
    xsd-type-name
    #f
    #f
    (property:)
    System.Xml.Serialization.XmlTypeMapping
    XsdTypeName
    System.String)
  (define-field-port
    xsd-type-namespace
    #f
    #f
    (property:)
    System.Xml.Serialization.XmlTypeMapping
    XsdTypeNamespace
    System.String))
