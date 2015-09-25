(library (system xml schema xml-schema-particle)
  (export is?
          xml-schema-particle?
          min-occurs-string-get
          min-occurs-string-set!
          min-occurs-string-update!
          max-occurs-string-get
          max-occurs-string-set!
          max-occurs-string-update!
          min-occurs-get
          min-occurs-set!
          min-occurs-update!
          max-occurs-get
          max-occurs-set!
          max-occurs-update!)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Xml.Schema.XmlSchemaParticle a))
  (define (xml-schema-particle? a)
    (clr-is System.Xml.Schema.XmlSchemaParticle a))
  (define-field-port
    min-occurs-string-get
    min-occurs-string-set!
    min-occurs-string-update!
    (property:)
    System.Xml.Schema.XmlSchemaParticle
    MinOccursString
    System.String)
  (define-field-port
    max-occurs-string-get
    max-occurs-string-set!
    max-occurs-string-update!
    (property:)
    System.Xml.Schema.XmlSchemaParticle
    MaxOccursString
    System.String)
  (define-field-port
    min-occurs-get
    min-occurs-set!
    min-occurs-update!
    (property:)
    System.Xml.Schema.XmlSchemaParticle
    MinOccurs
    System.Decimal)
  (define-field-port
    max-occurs-get
    max-occurs-set!
    max-occurs-update!
    (property:)
    System.Xml.Schema.XmlSchemaParticle
    MaxOccurs
    System.Decimal))
