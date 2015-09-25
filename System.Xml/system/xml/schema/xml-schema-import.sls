(library (system xml schema xml-schema-import)
  (export new
          is?
          xml-schema-import?
          namespace-get
          namespace-set!
          namespace-update!
          annotation-get
          annotation-set!
          annotation-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.Schema.XmlSchemaImport a ...)))))
  (define (is? a) (clr-is System.Xml.Schema.XmlSchemaImport a))
  (define (xml-schema-import? a)
    (clr-is System.Xml.Schema.XmlSchemaImport a))
  (define-field-port
    namespace-get
    namespace-set!
    namespace-update!
    (property:)
    System.Xml.Schema.XmlSchemaImport
    Namespace
    System.String)
  (define-field-port
    annotation-get
    annotation-set!
    annotation-update!
    (property:)
    System.Xml.Schema.XmlSchemaImport
    Annotation
    System.Xml.Schema.XmlSchemaAnnotation))
