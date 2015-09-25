(library (system xml schema xml-schema-include)
  (export new
          is?
          xml-schema-include?
          annotation-get
          annotation-set!
          annotation-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.Schema.XmlSchemaInclude a ...)))))
  (define (is? a) (clr-is System.Xml.Schema.XmlSchemaInclude a))
  (define (xml-schema-include? a)
    (clr-is System.Xml.Schema.XmlSchemaInclude a))
  (define-field-port
    annotation-get
    annotation-set!
    annotation-update!
    (property:)
    System.Xml.Schema.XmlSchemaInclude
    Annotation
    System.Xml.Schema.XmlSchemaAnnotation))
