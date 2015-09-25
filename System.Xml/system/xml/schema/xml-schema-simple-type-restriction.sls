(library (system xml schema xml-schema-simple-type-restriction)
  (export new
          is?
          xml-schema-simple-type-restriction?
          base-type-name-get
          base-type-name-set!
          base-type-name-update!
          base-type-get
          base-type-set!
          base-type-update!
          facets)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.Schema.XmlSchemaSimpleTypeRestriction
             a
             ...)))))
  (define (is? a)
    (clr-is System.Xml.Schema.XmlSchemaSimpleTypeRestriction a))
  (define (xml-schema-simple-type-restriction? a)
    (clr-is System.Xml.Schema.XmlSchemaSimpleTypeRestriction a))
  (define-field-port
    base-type-name-get
    base-type-name-set!
    base-type-name-update!
    (property:)
    System.Xml.Schema.XmlSchemaSimpleTypeRestriction
    BaseTypeName
    System.Xml.XmlQualifiedName)
  (define-field-port
    base-type-get
    base-type-set!
    base-type-update!
    (property:)
    System.Xml.Schema.XmlSchemaSimpleTypeRestriction
    BaseType
    System.Xml.Schema.XmlSchemaSimpleType)
  (define-field-port
    facets
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaSimpleTypeRestriction
    Facets
    System.Xml.Schema.XmlSchemaObjectCollection))
