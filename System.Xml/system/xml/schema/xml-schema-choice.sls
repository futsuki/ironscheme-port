(library (system xml schema xml-schema-choice)
  (export new is? xml-schema-choice? items)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.Schema.XmlSchemaChoice a ...)))))
  (define (is? a) (clr-is System.Xml.Schema.XmlSchemaChoice a))
  (define (xml-schema-choice? a)
    (clr-is System.Xml.Schema.XmlSchemaChoice a))
  (define-field-port
    items
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaChoice
    Items
    System.Xml.Schema.XmlSchemaObjectCollection))
