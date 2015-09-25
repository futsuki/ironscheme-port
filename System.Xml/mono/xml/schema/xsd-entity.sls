(library (mono xml schema xsd-entity)
  (export is? xsd-entity? tokenized-type type-code value-type)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is Mono.Xml.Schema.XsdEntity a))
  (define (xsd-entity? a) (clr-is Mono.Xml.Schema.XsdEntity a))
  (define-field-port
    tokenized-type
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdEntity
    TokenizedType
    System.Xml.XmlTokenizedType)
  (define-field-port
    type-code
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdEntity
    TypeCode
    System.Xml.Schema.XmlTypeCode)
  (define-field-port
    value-type
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdEntity
    ValueType
    System.Type))
