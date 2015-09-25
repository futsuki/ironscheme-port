(library (mono xml schema xsd-hex-binary)
  (export is?
          xsd-hex-binary?
          parse-value
          type-code
          tokenized-type
          value-type)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is Mono.Xml.Schema.XsdHexBinary a))
  (define (xsd-hex-binary? a) (clr-is Mono.Xml.Schema.XsdHexBinary a))
  (define-method-port
    parse-value
    Mono.Xml.Schema.XsdHexBinary
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
    Mono.Xml.Schema.XsdHexBinary
    TypeCode
    System.Xml.Schema.XmlTypeCode)
  (define-field-port
    tokenized-type
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdHexBinary
    TokenizedType
    System.Xml.XmlTokenizedType)
  (define-field-port
    value-type
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdHexBinary
    ValueType
    System.Type))
