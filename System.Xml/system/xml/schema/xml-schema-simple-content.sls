(library (system xml schema xml-schema-simple-content)
  (export new
          is?
          xml-schema-simple-content?
          content-get
          content-set!
          content-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.Schema.XmlSchemaSimpleContent a ...)))))
  (define (is? a) (clr-is System.Xml.Schema.XmlSchemaSimpleContent a))
  (define (xml-schema-simple-content? a)
    (clr-is System.Xml.Schema.XmlSchemaSimpleContent a))
  (define-field-port
    content-get
    content-set!
    content-update!
    (property:)
    System.Xml.Schema.XmlSchemaSimpleContent
    Content
    System.Xml.Schema.XmlSchemaContent))
