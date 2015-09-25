(library (system xml serialization xml-element-event-args)
  (export is?
          xml-element-event-args?
          element
          line-number
          line-position
          object-being-deserialized
          expected-elements)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Xml.Serialization.XmlElementEventArgs a))
  (define (xml-element-event-args? a)
    (clr-is System.Xml.Serialization.XmlElementEventArgs a))
  (define-field-port
    element
    #f
    #f
    (property:)
    System.Xml.Serialization.XmlElementEventArgs
    Element
    System.Xml.XmlElement)
  (define-field-port
    line-number
    #f
    #f
    (property:)
    System.Xml.Serialization.XmlElementEventArgs
    LineNumber
    System.Int32)
  (define-field-port
    line-position
    #f
    #f
    (property:)
    System.Xml.Serialization.XmlElementEventArgs
    LinePosition
    System.Int32)
  (define-field-port
    object-being-deserialized
    #f
    #f
    (property:)
    System.Xml.Serialization.XmlElementEventArgs
    ObjectBeingDeserialized
    System.Object)
  (define-field-port
    expected-elements
    #f
    #f
    (property:)
    System.Xml.Serialization.XmlElementEventArgs
    ExpectedElements
    System.String))
