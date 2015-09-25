(library (system xml schema xml-schema-attribute-group-ref)
  (export new
          is?
          xml-schema-attribute-group-ref?
          ref-name-get
          ref-name-set!
          ref-name-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.Schema.XmlSchemaAttributeGroupRef
             a
             ...)))))
  (define (is? a)
    (clr-is System.Xml.Schema.XmlSchemaAttributeGroupRef a))
  (define (xml-schema-attribute-group-ref? a)
    (clr-is System.Xml.Schema.XmlSchemaAttributeGroupRef a))
  (define-field-port
    ref-name-get
    ref-name-set!
    ref-name-update!
    (property:)
    System.Xml.Schema.XmlSchemaAttributeGroupRef
    RefName
    System.Xml.XmlQualifiedName))
