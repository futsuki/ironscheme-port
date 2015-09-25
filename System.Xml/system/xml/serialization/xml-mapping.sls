(library (system xml serialization xml-mapping)
  (export is?
          xml-mapping?
          set-key
          xsd-element-name
          element-name
          namespace)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Xml.Serialization.XmlMapping a))
  (define (xml-mapping? a)
    (clr-is System.Xml.Serialization.XmlMapping a))
  (define-method-port
    set-key
    System.Xml.Serialization.XmlMapping
    SetKey
    (System.Void System.String))
  (define-field-port
    xsd-element-name
    #f
    #f
    (property:)
    System.Xml.Serialization.XmlMapping
    XsdElementName
    System.String)
  (define-field-port
    element-name
    #f
    #f
    (property:)
    System.Xml.Serialization.XmlMapping
    ElementName
    System.String)
  (define-field-port
    namespace
    #f
    #f
    (property:)
    System.Xml.Serialization.XmlMapping
    Namespace
    System.String))
