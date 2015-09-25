(library (mono xml schema xsd-ncname)
  (export is?
          xsd-ncname?
          parse-value
          tokenized-type
          type-code
          value-type)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is Mono.Xml.Schema.XsdNCName a))
  (define (xsd-ncname? a) (clr-is Mono.Xml.Schema.XsdNCName a))
  (define-method-port
    parse-value
    Mono.Xml.Schema.XsdNCName
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
    Mono.Xml.Schema.XsdNCName
    TokenizedType
    System.Xml.XmlTokenizedType)
  (define-field-port
    type-code
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdNCName
    TypeCode
    System.Xml.Schema.XmlTypeCode)
  (define-field-port
    value-type
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdNCName
    ValueType
    System.Type))
