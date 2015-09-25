(library (system xml schema xml-schema-sequence)
  (export new is? xml-schema-sequence? items)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.Schema.XmlSchemaSequence a ...)))))
  (define (is? a) (clr-is System.Xml.Schema.XmlSchemaSequence a))
  (define (xml-schema-sequence? a)
    (clr-is System.Xml.Schema.XmlSchemaSequence a))
  (define-field-port
    items
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaSequence
    Items
    System.Xml.Schema.XmlSchemaObjectCollection))
