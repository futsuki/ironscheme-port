(library (mono xml schema xsd-nmtokens)
  (export is?
          xsd-nmtokens?
          parse-value
          tokenized-type
          type-code
          value-type)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is Mono.Xml.Schema.XsdNMTokens a))
  (define (xsd-nmtokens? a) (clr-is Mono.Xml.Schema.XsdNMTokens a))
  (define-method-port
    parse-value
    Mono.Xml.Schema.XsdNMTokens
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
    Mono.Xml.Schema.XsdNMTokens
    TokenizedType
    System.Xml.XmlTokenizedType)
  (define-field-port
    type-code
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdNMTokens
    TypeCode
    System.Xml.Schema.XmlTypeCode)
  (define-field-port
    value-type
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdNMTokens
    ValueType
    System.Type))
