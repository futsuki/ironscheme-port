(library (mono xml schema xsd-id)
  (export is? xsd-id? parse-value tokenized-type type-code value-type)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is Mono.Xml.Schema.XsdID a))
  (define (xsd-id? a) (clr-is Mono.Xml.Schema.XsdID a))
  (define-method-port
    parse-value
    Mono.Xml.Schema.XsdID
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
    Mono.Xml.Schema.XsdID
    TokenizedType
    System.Xml.XmlTokenizedType)
  (define-field-port
    type-code
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdID
    TypeCode
    System.Xml.Schema.XmlTypeCode)
  (define-field-port
    value-type
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdID
    ValueType
    System.Type))
