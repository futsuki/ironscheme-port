(library (mono xml schema xsd-qname)
  (export is?
          xsd-qname?
          parse-value
          tokenized-type
          type-code
          value-type)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is Mono.Xml.Schema.XsdQName a))
  (define (xsd-qname? a) (clr-is Mono.Xml.Schema.XsdQName a))
  (define-method-port
    parse-value
    Mono.Xml.Schema.XsdQName
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
    Mono.Xml.Schema.XsdQName
    TokenizedType
    System.Xml.XmlTokenizedType)
  (define-field-port
    type-code
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdQName
    TypeCode
    System.Xml.Schema.XmlTypeCode)
  (define-field-port
    value-type
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdQName
    ValueType
    System.Type))
