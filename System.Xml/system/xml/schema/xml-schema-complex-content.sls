(library (system xml schema xml-schema-complex-content)
  (export new
          is?
          xml-schema-complex-content?
          is-mixed?-get
          is-mixed?-set!
          is-mixed?-update!
          content-get
          content-set!
          content-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.Schema.XmlSchemaComplexContent a ...)))))
  (define (is? a) (clr-is System.Xml.Schema.XmlSchemaComplexContent a))
  (define (xml-schema-complex-content? a)
    (clr-is System.Xml.Schema.XmlSchemaComplexContent a))
  (define-field-port
    is-mixed?-get
    is-mixed?-set!
    is-mixed?-update!
    (property:)
    System.Xml.Schema.XmlSchemaComplexContent
    IsMixed
    System.Boolean)
  (define-field-port
    content-get
    content-set!
    content-update!
    (property:)
    System.Xml.Schema.XmlSchemaComplexContent
    Content
    System.Xml.Schema.XmlSchemaContent))
