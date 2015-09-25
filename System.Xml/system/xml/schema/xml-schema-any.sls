(library (system xml schema xml-schema-any)
  (export new
          is?
          xml-schema-any?
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
        ((_ a ...) #'(clr-new System.Xml.Schema.XmlSchemaAny a ...)))))
  (define (is? a) (clr-is System.Xml.Schema.XmlSchemaAny a))
  (define (xml-schema-any? a) (clr-is System.Xml.Schema.XmlSchemaAny a))
  (define-field-port
    namespace-get
    namespace-set!
    namespace-update!
    (property:)
    System.Xml.Schema.XmlSchemaAny
    Namespace
    System.String)
  (define-field-port
    process-contents-get
    process-contents-set!
    process-contents-update!
    (property:)
    System.Xml.Schema.XmlSchemaAny
    ProcessContents
    System.Xml.Schema.XmlSchemaContentProcessing))
