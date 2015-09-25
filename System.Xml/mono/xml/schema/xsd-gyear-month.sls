(library (mono xml schema xsd-gyear-month)
  (export is? xsd-gyear-month? parse-value type-code value-type)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is Mono.Xml.Schema.XsdGYearMonth a))
  (define (xsd-gyear-month? a) (clr-is Mono.Xml.Schema.XsdGYearMonth a))
  (define-method-port
    parse-value
    Mono.Xml.Schema.XsdGYearMonth
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
    Mono.Xml.Schema.XsdGYearMonth
    TypeCode
    System.Xml.Schema.XmlTypeCode)
  (define-field-port
    value-type
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdGYearMonth
    ValueType
    System.Type))
