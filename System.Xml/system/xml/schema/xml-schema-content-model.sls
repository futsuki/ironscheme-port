(library (system xml schema xml-schema-content-model)
  (export is?
          xml-schema-content-model?
          content-get
          content-set!
          content-update!)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Xml.Schema.XmlSchemaContentModel a))
  (define (xml-schema-content-model? a)
    (clr-is System.Xml.Schema.XmlSchemaContentModel a))
  (define-field-port
    content-get
    content-set!
    content-update!
    (property:)
    System.Xml.Schema.XmlSchemaContentModel
    Content
    System.Xml.Schema.XmlSchemaContent))
