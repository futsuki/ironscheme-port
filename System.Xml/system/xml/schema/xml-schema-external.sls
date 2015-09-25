(library (system xml schema xml-schema-external)
  (export is?
          xml-schema-external?
          schema-location-get
          schema-location-set!
          schema-location-update!
          schema-get
          schema-set!
          schema-update!
          id-get
          id-set!
          id-update!
          unhandled-attributes-get
          unhandled-attributes-set!
          unhandled-attributes-update!)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Xml.Schema.XmlSchemaExternal a))
  (define (xml-schema-external? a)
    (clr-is System.Xml.Schema.XmlSchemaExternal a))
  (define-field-port
    schema-location-get
    schema-location-set!
    schema-location-update!
    (property:)
    System.Xml.Schema.XmlSchemaExternal
    SchemaLocation
    System.String)
  (define-field-port
    schema-get
    schema-set!
    schema-update!
    (property:)
    System.Xml.Schema.XmlSchemaExternal
    Schema
    System.Xml.Schema.XmlSchema)
  (define-field-port
    id-get
    id-set!
    id-update!
    (property:)
    System.Xml.Schema.XmlSchemaExternal
    Id
    System.String)
  (define-field-port
    unhandled-attributes-get
    unhandled-attributes-set!
    unhandled-attributes-update!
    (property:)
    System.Xml.Schema.XmlSchemaExternal
    UnhandledAttributes
    System.Xml.XmlAttribute[]))
