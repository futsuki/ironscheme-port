(library (system xml schema xml-schema-simple-content-extension)
  (export new
          is?
          xml-schema-simple-content-extension?
          base-type-name-get
          base-type-name-set!
          base-type-name-update!
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
             System.Xml.Schema.XmlSchemaSimpleContentExtension
             a
             ...)))))
  (define (is? a)
    (clr-is System.Xml.Schema.XmlSchemaSimpleContentExtension a))
  (define (xml-schema-simple-content-extension? a)
    (clr-is System.Xml.Schema.XmlSchemaSimpleContentExtension a))
  (define-field-port
    base-type-name-get
    base-type-name-set!
    base-type-name-update!
    (property:)
    System.Xml.Schema.XmlSchemaSimpleContentExtension
    BaseTypeName
    System.Xml.XmlQualifiedName)
  (define-field-port
    attributes
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaSimpleContentExtension
    Attributes
    System.Xml.Schema.XmlSchemaObjectCollection)
  (define-field-port
    any-attribute-get
    any-attribute-set!
    any-attribute-update!
    (property:)
    System.Xml.Schema.XmlSchemaSimpleContentExtension
    AnyAttribute
    System.Xml.Schema.XmlSchemaAnyAttribute))
