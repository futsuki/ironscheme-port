(library (mono xml schema xsd-gyear)
  (export is? xsd-gyear? parse-value type-code value-type)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is Mono.Xml.Schema.XsdGYear a))
  (define (xsd-gyear? a) (clr-is Mono.Xml.Schema.XsdGYear a))
  (define-method-port
    parse-value
    Mono.Xml.Schema.XsdGYear
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
    Mono.Xml.Schema.XsdGYear
    TypeCode
    System.Xml.Schema.XmlTypeCode)
  (define-field-port
    value-type
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdGYear
    ValueType
    System.Type))
