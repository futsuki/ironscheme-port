(library (system xml schema xml-schema-any-attribute)
  (export new
          is?
          xml-schema-any-attribute?
          namespace-get
          namespace-set!
          namespace-update!
          process-contents-get
          process-contents-set!
          process-contents-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.Schema.XmlSchemaAnyAttribute a ...)))))
  (define (is? a) (clr-is System.Xml.Schema.XmlSchemaAnyAttribute a))
  (define (xml-schema-any-attribute? a)
    (clr-is System.Xml.Schema.XmlSchemaAnyAttribute a))
  (define-field-port
    namespace-get
    namespace-set!
    namespace-update!
    (property:)
    System.Xml.Schema.XmlSchemaAnyAttribute
    Namespace
    System.String)
  (define-field-port
    process-contents-get
    process-contents-set!
    process-contents-update!
    (property:)
    System.Xml.Schema.XmlSchemaAnyAttribute
    ProcessContents
    System.Xml.Schema.XmlSchemaContentProcessing))
