(library (system xml schema xml-schema-attribute-group)
  (export new
          is?
          xml-schema-attribute-group?
          name-get
          name-set!
          name-update!
          attributes
          any-attribute-get
          any-attribute-set!
          any-attribute-update!
          redefined-attribute-group
          qualified-name)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.Schema.XmlSchemaAttributeGroup a ...)))))
  (define (is? a) (clr-is System.Xml.Schema.XmlSchemaAttributeGroup a))
  (define (xml-schema-attribute-group? a)
    (clr-is System.Xml.Schema.XmlSchemaAttributeGroup a))
  (define-field-port
    name-get
    name-set!
    name-update!
    (property:)
    System.Xml.Schema.XmlSchemaAttributeGroup
    Name
    System.String)
  (define-field-port
    attributes
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaAttributeGroup
    Attributes
    System.Xml.Schema.XmlSchemaObjectCollection)
  (define-field-port
    any-attribute-get
    any-attribute-set!
    any-attribute-update!
    (property:)
    System.Xml.Schema.XmlSchemaAttributeGroup
    AnyAttribute
    System.Xml.Schema.XmlSchemaAnyAttribute)
  (define-field-port
    redefined-attribute-group
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaAttributeGroup
    RedefinedAttributeGroup
    System.Xml.Schema.XmlSchemaAttributeGroup)
  (define-field-port
    qualified-name
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaAttributeGroup
    QualifiedName
    System.Xml.XmlQualifiedName))
