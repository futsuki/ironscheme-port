(library (mono xml schema xsd-gmonth-day)
  (export is? xsd-gmonth-day? parse-value type-code value-type)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is Mono.Xml.Schema.XsdGMonthDay a))
  (define (xsd-gmonth-day? a) (clr-is Mono.Xml.Schema.XsdGMonthDay a))
  (define-method-port
    parse-value
    Mono.Xml.Schema.XsdGMonthDay
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
    Mono.Xml.Schema.XsdGMonthDay
    TypeCode
    System.Xml.Schema.XmlTypeCode)
  (define-field-port
    value-type
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdGMonthDay
    ValueType
    System.Type))
