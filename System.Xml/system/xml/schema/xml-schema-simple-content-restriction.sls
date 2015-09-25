(library (system xml schema xml-schema-simple-content-restriction)
  (export new
          is?
          xml-schema-simple-content-restriction?
          base-type-name-get
          base-type-name-set!
          base-type-name-update!
          base-type-get
          base-type-set!
          base-type-update!
          facets
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
             System.Xml.Schema.XmlSchemaSimpleContentRestriction
             a
             ...)))))
  (define (is? a)
    (clr-is System.Xml.Schema.XmlSchemaSimpleContentRestriction a))
  (define (xml-schema-simple-content-restriction? a)
    (clr-is System.Xml.Schema.XmlSchemaSimpleContentRestriction a))
  (define-field-port
    base-type-name-get
    base-type-name-set!
    base-type-name-update!
    (property:)
    System.Xml.Schema.XmlSchemaSimpleContentRestriction
    BaseTypeName
    System.Xml.XmlQualifiedName)
  (define-field-port
    base-type-get
    base-type-set!
    base-type-update!
    (property:)
    System.Xml.Schema.XmlSchemaSimpleContentRestriction
    BaseType
    System.Xml.Schema.XmlSchemaSimpleType)
  (define-field-port
    facets
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaSimpleContentRestriction
    Facets
    System.Xml.Schema.XmlSchemaObjectCollection)
  (define-field-port
    attributes
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaSimpleContentRestriction
    Attributes
    System.Xml.Schema.XmlSchemaObjectCollection)
  (define-field-port
    any-attribute-get
    any-attribute-set!
    any-attribute-update!
    (property:)
    System.Xml.Schema.XmlSchemaSimpleContentRestriction
    AnyAttribute
    System.Xml.Schema.XmlSchemaAnyAttribute))
