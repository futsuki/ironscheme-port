(library (system xml schema xml-schema-redefine)
  (export new
          is?
          xml-schema-redefine?
          items
          attribute-groups
          schema-types
          groups)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.Schema.XmlSchemaRedefine a ...)))))
  (define (is? a) (clr-is System.Xml.Schema.XmlSchemaRedefine a))
  (define (xml-schema-redefine? a)
    (clr-is System.Xml.Schema.XmlSchemaRedefine a))
  (define-field-port
    items
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaRedefine
    Items
    System.Xml.Schema.XmlSchemaObjectCollection)
  (define-field-port
    attribute-groups
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaRedefine
    AttributeGroups
    System.Xml.Schema.XmlSchemaObjectTable)
  (define-field-port
    schema-types
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaRedefine
    SchemaTypes
    System.Xml.Schema.XmlSchemaObjectTable)
  (define-field-port
    groups
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaRedefine
    Groups
    System.Xml.Schema.XmlSchemaObjectTable))
