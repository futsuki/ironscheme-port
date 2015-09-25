(library (mono xml schema xsd-gday)
  (export is? xsd-gday? parse-value type-code value-type)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is Mono.Xml.Schema.XsdGDay a))
  (define (xsd-gday? a) (clr-is Mono.Xml.Schema.XsdGDay a))
  (define-method-port
    parse-value
    Mono.Xml.Schema.XsdGDay
    ParseValue
    (System.Object
      System.String
      System.Xml.XmlNameTable
      System.Xml.IXmlNamespaceResolver))
  (define-field-port
    type-code
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdGDay
    TypeCode
    System.Xml.Schema.XmlTypeCode)
  (define-field-port
    value-type
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdGDay
    ValueType
    System.Type))
