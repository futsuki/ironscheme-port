(library (mono xml schema xsd-idrefs)
  (export is?
          xsd-idrefs?
          parse-value
          tokenized-type
          type-code
          value-type)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is Mono.Xml.Schema.XsdIDRefs a))
  (define (xsd-idrefs? a) (clr-is Mono.Xml.Schema.XsdIDRefs a))
  (define-method-port
    parse-value
    Mono.Xml.Schema.XsdIDRefs
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
    Mono.Xml.Schema.XsdIDRefs
    TokenizedType
    System.Xml.XmlTokenizedType)
  (define-field-port
    type-code
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdIDRefs
    TypeCode
    System.Xml.Schema.XmlTypeCode)
  (define-field-port
    value-type
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdIDRefs
    ValueType
    System.Type))
