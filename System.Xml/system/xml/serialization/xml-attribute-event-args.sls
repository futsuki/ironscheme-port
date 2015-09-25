(library (system xml serialization xml-attribute-event-args)
  (export is?
          xml-attribute-event-args?
          attr
          line-number
          line-position
          object-being-deserialized
          expected-attributes)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Xml.Serialization.XmlAttributeEventArgs a))
  (define (xml-attribute-event-args? a)
    (clr-is System.Xml.Serialization.XmlAttributeEventArgs a))
  (define-field-port
    attr
    #f
    #f
    (property:)
    System.Xml.Serialization.XmlAttributeEventArgs
    Attr
    System.Xml.XmlAttribute)
  (define-field-port
    line-number
    #f
    #f
    (property:)
    System.Xml.Serialization.XmlAttributeEventArgs
    LineNumber
    System.Int32)
  (define-field-port
    line-position
    #f
    #f
    (property:)
    System.Xml.Serialization.XmlAttributeEventArgs
    LinePosition
    System.Int32)
  (define-field-port
    object-being-deserialized
    #f
    #f
    (property:)
    System.Xml.Serialization.XmlAttributeEventArgs
    ObjectBeingDeserialized
    System.Object)
  (define-field-port
    expected-attributes
    #f
    #f
    (property:)
    System.Xml.Serialization.XmlAttributeEventArgs
    ExpectedAttributes
    System.String))
