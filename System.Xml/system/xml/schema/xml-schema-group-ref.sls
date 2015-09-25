(library (system xml schema xml-schema-group-ref)
  (export new
          is?
          xml-schema-group-ref?
          ref-name-get
          ref-name-set!
          ref-name-update!
          particle)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.Schema.XmlSchemaGroupRef a ...)))))
  (define (is? a) (clr-is System.Xml.Schema.XmlSchemaGroupRef a))
  (define (xml-schema-group-ref? a)
    (clr-is System.Xml.Schema.XmlSchemaGroupRef a))
  (define-field-port
    ref-name-get
    ref-name-set!
    ref-name-update!
    (property:)
    System.Xml.Schema.XmlSchemaGroupRef
    RefName
    System.Xml.XmlQualifiedName)
  (define-field-port
    particle
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaGroupRef
    Particle
    System.Xml.Schema.XmlSchemaGroupBase))
