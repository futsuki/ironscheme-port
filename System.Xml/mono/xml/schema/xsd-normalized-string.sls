(library (mono xml schema xsd-normalized-string)
  (export is?
          xsd-normalized-string?
          tokenized-type
          type-code
          value-type)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is Mono.Xml.Schema.XsdNormalizedString a))
  (define (xsd-normalized-string? a)
    (clr-is Mono.Xml.Schema.XsdNormalizedString a))
  (define-field-port
    tokenized-type
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdNormalizedString
    TokenizedType
    System.Xml.XmlTokenizedType)
  (define-field-port
    type-code
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdNormalizedString
    TypeCode
    System.Xml.Schema.XmlTypeCode)
  (define-field-port
    value-type
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdNormalizedString
    ValueType
    System.Type))
