(library (system xml schema xml-schema-annotated)
  (export new
          is?
          xml-schema-annotated?
          id-get
          id-set!
          id-update!
          annotation-get
          annotation-set!
          annotation-update!
          unhandled-attributes-get
          unhandled-attributes-set!
          unhandled-attributes-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.Schema.XmlSchemaAnnotated a ...)))))
  (define (is? a) (clr-is System.Xml.Schema.XmlSchemaAnnotated a))
  (define (xml-schema-annotated? a)
    (clr-is System.Xml.Schema.XmlSchemaAnnotated a))
  (define-field-port
    id-get
    id-set!
    id-update!
    (property:)
    System.Xml.Schema.XmlSchemaAnnotated
    Id
    System.String)
  (define-field-port
    annotation-get
    annotation-set!
    annotation-update!
    (property:)
    System.Xml.Schema.XmlSchemaAnnotated
    Annotation
    System.Xml.Schema.XmlSchemaAnnotation)
  (define-field-port
    unhandled-attributes-get
    unhandled-attributes-set!
    unhandled-attributes-update!
    (property:)
    System.Xml.Schema.XmlSchemaAnnotated
    UnhandledAttributes
    System.Xml.XmlAttribute[]))
