(library (mono xml schema xsd-decimal)
  (export is?
          xsd-decimal?
          parse-value
          tokenized-type
          type-code
          value-type
          bounded?
          finite?
          numeric?
          ordered)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is Mono.Xml.Schema.XsdDecimal a))
  (define (xsd-decimal? a) (clr-is Mono.Xml.Schema.XsdDecimal a))
  (define-method-port
    parse-value
    Mono.Xml.Schema.XsdDecimal
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
    Mono.Xml.Schema.XsdDecimal
    TokenizedType
    System.Xml.XmlTokenizedType)
  (define-field-port
    type-code
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdDecimal
    TypeCode
    System.Xml.Schema.XmlTypeCode)
  (define-field-port
    value-type
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdDecimal
    ValueType
    System.Type)
  (define-field-port
    bounded?
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdDecimal
    Bounded
    System.Boolean)
  (define-field-port
    finite?
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdDecimal
    Finite
    System.Boolean)
  (define-field-port
    numeric?
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdDecimal
    Numeric
    System.Boolean)
  (define-field-port
    ordered
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdDecimal
    Ordered
    Mono.Xml.Schema.XsdOrderedFacet))
