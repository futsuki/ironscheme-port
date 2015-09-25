(library (system xml schema xml-schema-object)
  (export is?
          xml-schema-object?
          line-number-get
          line-number-set!
          line-number-update!
          line-position-get
          line-position-set!
          line-position-update!
          source-uri-get
          source-uri-set!
          source-uri-update!
          parent-get
          parent-set!
          parent-update!
          namespaces-get
          namespaces-set!
          namespaces-update!)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Xml.Schema.XmlSchemaObject a))
  (define (xml-schema-object? a)
    (clr-is System.Xml.Schema.XmlSchemaObject a))
  (define-field-port
    line-number-get
    line-number-set!
    line-number-update!
    (property:)
    System.Xml.Schema.XmlSchemaObject
    LineNumber
    System.Int32)
  (define-field-port
    line-position-get
    line-position-set!
    line-position-update!
    (property:)
    System.Xml.Schema.XmlSchemaObject
    LinePosition
    System.Int32)
  (define-field-port
    source-uri-get
    source-uri-set!
    source-uri-update!
    (property:)
    System.Xml.Schema.XmlSchemaObject
    SourceUri
    System.String)
  (define-field-port
    parent-get
    parent-set!
    parent-update!
    (property:)
    System.Xml.Schema.XmlSchemaObject
    Parent
    System.Xml.Schema.XmlSchemaObject)
  (define-field-port
    namespaces-get
    namespaces-set!
    namespaces-update!
    (property:)
    System.Xml.Schema.XmlSchemaObject
    Namespaces
    System.Xml.Serialization.XmlSerializerNamespaces))
