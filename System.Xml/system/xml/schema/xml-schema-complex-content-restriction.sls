(library (system xml schema xml-schema-complex-content-restriction)
  (export new
          is?
          xml-schema-complex-content-restriction?
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
             System.Xml.Schema.XmlSchemaComplexContentRestriction
             a
             ...)))))
  (define (is? a)
    (clr-is System.Xml.Schema.XmlSchemaComplexContentRestriction a))
  (define (xml-schema-complex-content-restriction? a)
    (clr-is System.Xml.Schema.XmlSchemaComplexContentRestriction a))
  (define-field-port
    base-type-name-get
    base-type-name-set!
    base-type-name-update!
    (property:)
    System.Xml.Schema.XmlSchemaComplexContentRestriction
    BaseTypeName
    System.Xml.XmlQualifiedName)
  (define-field-port
    particle-get
    particle-set!
    particle-update!
    (property:)
    System.Xml.Schema.XmlSchemaComplexContentRestriction
    Particle
    System.Xml.Schema.XmlSchemaParticle)
  (define-field-port
    attributes
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaComplexContentRestriction
    Attributes
    System.Xml.Schema.XmlSchemaObjectCollection)
  (define-field-port
    any-attribute-get
    any-attribute-set!
    any-attribute-update!
    (property:)
    System.Xml.Schema.XmlSchemaComplexContentRestriction
    AnyAttribute
    System.Xml.Schema.XmlSchemaAnyAttribute))
