(library (system xml schema xml-schema-facet)
  (export is?
          xml-schema-facet?
          value-get
          value-set!
          value-update!
          is-fixed?-get
          is-fixed?-set!
          is-fixed?-update!)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Xml.Schema.XmlSchemaFacet a))
  (define (xml-schema-facet? a)
    (clr-is System.Xml.Schema.XmlSchemaFacet a))
  (define-field-port
    value-get
    value-set!
    value-update!
    (property:)
    System.Xml.Schema.XmlSchemaFacet
    Value
    System.String)
  (define-field-port
    is-fixed?-get
    is-fixed?-set!
    is-fixed?-update!
    (property:)
    System.Xml.Schema.XmlSchemaFacet
    IsFixed
    System.Boolean))
