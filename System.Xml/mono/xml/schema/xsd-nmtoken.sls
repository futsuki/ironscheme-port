(library (mono xml schema xsd-nmtoken)
  (export is?
          xsd-nmtoken?
          parse-value
          tokenized-type
          type-code
          value-type)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is Mono.Xml.Schema.XsdNMToken a))
  (define (xsd-nmtoken? a) (clr-is Mono.Xml.Schema.XsdNMToken a))
  (define-method-port
    parse-value
    Mono.Xml.Schema.XsdNMToken
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
    Mono.Xml.Schema.XsdNMToken
    TokenizedType
    System.Xml.XmlTokenizedType)
  (define-field-port
    type-code
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdNMToken
    TypeCode
    System.Xml.Schema.XmlTypeCode)
  (define-field-port
    value-type
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdNMToken
    ValueType
    System.Type))
