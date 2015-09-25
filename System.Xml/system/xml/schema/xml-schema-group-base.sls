(library (system xml schema xml-schema-group-base)
  (export is? xml-schema-group-base? items)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Xml.Schema.XmlSchemaGroupBase a))
  (define (xml-schema-group-base? a)
    (clr-is System.Xml.Schema.XmlSchemaGroupBase a))
  (define-field-port
    items
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaGroupBase
    Items
    System.Xml.Schema.XmlSchemaObjectCollection))
