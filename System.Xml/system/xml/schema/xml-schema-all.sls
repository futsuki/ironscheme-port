(library (system xml schema xml-schema-all)
  (export new is? xml-schema-all? items)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.Schema.XmlSchemaAll a ...)))))
  (define (is? a) (clr-is System.Xml.Schema.XmlSchemaAll a))
  (define (xml-schema-all? a) (clr-is System.Xml.Schema.XmlSchemaAll a))
  (define-field-port
    items
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaAll
    Items
    System.Xml.Schema.XmlSchemaObjectCollection))
