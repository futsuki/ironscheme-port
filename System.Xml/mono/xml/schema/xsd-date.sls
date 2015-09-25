(library (mono xml schema xsd-date)
  (export is?
          xsd-date?
          parse-value
          tokenized-type
          type-code
          value-type
          ordered)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is Mono.Xml.Schema.XsdDate a))
  (define (xsd-date? a) (clr-is Mono.Xml.Schema.XsdDate a))
  (define-method-port
    parse-value
    Mono.Xml.Schema.XsdDate
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
    Mono.Xml.Schema.XsdDate
    TokenizedType
    System.Xml.XmlTokenizedType)
  (define-field-port
    type-code
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdDate
    TypeCode
    System.Xml.Schema.XmlTypeCode)
  (define-field-port
    value-type
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdDate
    ValueType
    System.Type)
  (define-field-port
    ordered
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdDate
    Ordered
    Mono.Xml.Schema.XsdOrderedFacet))
