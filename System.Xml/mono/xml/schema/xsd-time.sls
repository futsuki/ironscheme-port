(library (mono xml schema xsd-time)
  (export is?
          xsd-time?
          parse-value
          tokenized-type
          type-code
          value-type
          ordered)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is Mono.Xml.Schema.XsdTime a))
  (define (xsd-time? a) (clr-is Mono.Xml.Schema.XsdTime a))
  (define-method-port
    parse-value
    Mono.Xml.Schema.XsdTime
    ParseValue
    (System.Object
      System.String
      System.Xml.XmlNameTable
      System.Xml.IXmlNamespaceResolver))
  (define-field-port
    tokenized-type
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdTime
    TokenizedType
    System.Xml.XmlTokenizedType)
  (define-field-port
    type-code
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdTime
    TypeCode
    System.Xml.Schema.XmlTypeCode)
  (define-field-port
    value-type
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdTime
    ValueType
    System.Type)
  (define-field-port
    ordered
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdTime
    Ordered
    Mono.Xml.Schema.XsdOrderedFacet))
