(library (mono xml schema xsd-gmonth)
  (export is? xsd-gmonth? parse-value type-code value-type)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is Mono.Xml.Schema.XsdGMonth a))
  (define (xsd-gmonth? a) (clr-is Mono.Xml.Schema.XsdGMonth a))
  (define-method-port
    parse-value
    Mono.Xml.Schema.XsdGMonth
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
    Mono.Xml.Schema.XsdGMonth
    TypeCode
    System.Xml.Schema.XmlTypeCode)
  (define-field-port
    value-type
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdGMonth
    ValueType
    System.Type))
