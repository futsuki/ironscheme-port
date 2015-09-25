(library (system xml schema xml-schema-simple-type-list)
  (export new
          is?
          xml-schema-simple-type-list?
          item-type-name-get
          item-type-name-set!
          item-type-name-update!
          item-type-get
          item-type-set!
          item-type-update!
          base-item-type-get
          base-item-type-set!
          base-item-type-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.Schema.XmlSchemaSimpleTypeList a ...)))))
  (define (is? a) (clr-is System.Xml.Schema.XmlSchemaSimpleTypeList a))
  (define (xml-schema-simple-type-list? a)
    (clr-is System.Xml.Schema.XmlSchemaSimpleTypeList a))
  (define-field-port
    item-type-name-get
    item-type-name-set!
    item-type-name-update!
    (property:)
    System.Xml.Schema.XmlSchemaSimpleTypeList
    ItemTypeName
    System.Xml.XmlQualifiedName)
  (define-field-port
    item-type-get
    item-type-set!
    item-type-update!
    (property:)
    System.Xml.Schema.XmlSchemaSimpleTypeList
    ItemType
    System.Xml.Schema.XmlSchemaSimpleType)
  (define-field-port
    base-item-type-get
    base-item-type-set!
    base-item-type-update!
    (property:)
    System.Xml.Schema.XmlSchemaSimpleTypeList
    BaseItemType
    System.Xml.Schema.XmlSchemaSimpleType))
