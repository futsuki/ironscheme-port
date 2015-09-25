(library (system xml schema xml-schema-complex-content-extension)
  (export new
          is?
          xml-schema-complex-content-extension?
          base-type-name-get
          base-type-name-set!
          base-type-name-update!
          particle-get
          particle-set!
          particle-update!
          attributes
          any-attribute-get
          any-attribute-set!
          any-attribute-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.Schema.XmlSchemaComplexContentExtension
             a
             ...)))))
  (define (is? a)
    (clr-is System.Xml.Schema.XmlSchemaComplexContentExtension a))
  (define (xml-schema-complex-content-extension? a)
    (clr-is System.Xml.Schema.XmlSchemaComplexContentExtension a))
  (define-field-port
    base-type-name-get
    base-type-name-set!
    base-type-name-update!
    (property:)
    System.Xml.Schema.XmlSchemaComplexContentExtension
    BaseTypeName
    System.Xml.XmlQualifiedName)
  (define-field-port
    particle-get
    particle-set!
    particle-update!
    (property:)
    System.Xml.Schema.XmlSchemaComplexContentExtension
    Particle
    System.Xml.Schema.XmlSchemaParticle)
  (define-field-port
    attributes
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaComplexContentExtension
    Attributes
    System.Xml.Schema.XmlSchemaObjectCollection)
  (define-field-port
    any-attribute-get
    any-attribute-set!
    any-attribute-update!
    (property:)
    System.Xml.Schema.XmlSchemaComplexContentExtension
    AnyAttribute
    System.Xml.Schema.XmlSchemaAnyAttribute))
