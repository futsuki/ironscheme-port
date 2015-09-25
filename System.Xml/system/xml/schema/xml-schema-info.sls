(library (system xml schema xml-schema-info)
  (export new
          is?
          xml-schema-info?
          content-type-get
          content-type-set!
          content-type-update!
          is-default?-get
          is-default?-set!
          is-default?-update!
          is-nil?-get
          is-nil?-set!
          is-nil?-update!
          member-type-get
          member-type-set!
          member-type-update!
          schema-attribute-get
          schema-attribute-set!
          schema-attribute-update!
          schema-element-get
          schema-element-set!
          schema-element-update!
          schema-type-get
          schema-type-set!
          schema-type-update!
          validity-get
          validity-set!
          validity-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.Schema.XmlSchemaInfo a ...)))))
  (define (is? a) (clr-is System.Xml.Schema.XmlSchemaInfo a))
  (define (xml-schema-info? a)
    (clr-is System.Xml.Schema.XmlSchemaInfo a))
  (define-field-port
    content-type-get
    content-type-set!
    content-type-update!
    (property:)
    System.Xml.Schema.XmlSchemaInfo
    ContentType
    System.Xml.Schema.XmlSchemaContentType)
  (define-field-port
    is-default?-get
    is-default?-set!
    is-default?-update!
    (property:)
    System.Xml.Schema.XmlSchemaInfo
    IsDefault
    System.Boolean)
  (define-field-port
    is-nil?-get
    is-nil?-set!
    is-nil?-update!
    (property:)
    System.Xml.Schema.XmlSchemaInfo
    IsNil
    System.Boolean)
  (define-field-port
    member-type-get
    member-type-set!
    member-type-update!
    (property:)
    System.Xml.Schema.XmlSchemaInfo
    MemberType
    System.Xml.Schema.XmlSchemaSimpleType)
  (define-field-port
    schema-attribute-get
    schema-attribute-set!
    schema-attribute-update!
    (property:)
    System.Xml.Schema.XmlSchemaInfo
    SchemaAttribute
    System.Xml.Schema.XmlSchemaAttribute)
  (define-field-port
    schema-element-get
    schema-element-set!
    schema-element-update!
    (property:)
    System.Xml.Schema.XmlSchemaInfo
    SchemaElement
    System.Xml.Schema.XmlSchemaElement)
  (define-field-port
    schema-type-get
    schema-type-set!
    schema-type-update!
    (property:)
    System.Xml.Schema.XmlSchemaInfo
    SchemaType
    System.Xml.Schema.XmlSchemaType)
  (define-field-port
    validity-get
    validity-set!
    validity-update!
    (property:)
    System.Xml.Schema.XmlSchemaInfo
    Validity
    System.Xml.Schema.XmlSchemaValidity))
