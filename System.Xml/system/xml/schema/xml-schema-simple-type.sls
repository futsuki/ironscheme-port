(library (system xml schema xml-schema-simple-type)
  (export new
          is?
          xml-schema-simple-type?
          content-get
          content-set!
          content-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.Schema.XmlSchemaSimpleType a ...)))))
  (define (is? a) (clr-is System.Xml.Schema.XmlSchemaSimpleType a))
  (define (xml-schema-simple-type? a)
    (clr-is System.Xml.Schema.XmlSchemaSimpleType a))
  (define-field-port
    content-get
    content-set!
    content-update!
    (property:)
    System.Xml.Schema.XmlSchemaSimpleType
    Content
    System.Xml.Schema.XmlSchemaSimpleTypeContent))
