(library (mono xml schema xsd-language)
  (export is? xsd-language? tokenized-type type-code value-type)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is Mono.Xml.Schema.XsdLanguage a))
  (define (xsd-language? a) (clr-is Mono.Xml.Schema.XsdLanguage a))
  (define-field-port
    tokenized-type
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdLanguage
    TokenizedType
    System.Xml.XmlTokenizedType)
  (define-field-port
    type-code
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdLanguage
    TypeCode
    System.Xml.Schema.XmlTypeCode)
  (define-field-port
    value-type
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdLanguage
    ValueType
    System.Type))
