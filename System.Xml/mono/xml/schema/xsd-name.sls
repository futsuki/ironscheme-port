(library (mono xml schema xsd-name)
  (export is? xsd-name? parse-value tokenized-type type-code value-type)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is Mono.Xml.Schema.XsdName a))
  (define (xsd-name? a) (clr-is Mono.Xml.Schema.XsdName a))
  (define-method-port
    parse-value
    Mono.Xml.Schema.XsdName
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
    Mono.Xml.Schema.XsdName
    TokenizedType
    System.Xml.XmlTokenizedType)
  (define-field-port
    type-code
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdName
    TypeCode
    System.Xml.Schema.XmlTypeCode)
  (define-field-port
    value-type
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdName
    ValueType
    System.Type))
