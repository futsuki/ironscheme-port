(library (system xml serialization xml-array-item-attribute)
  (export new
          is?
          xml-array-item-attribute?
          data-type-get
          data-type-set!
          data-type-update!
          element-name-get
          element-name-set!
          element-name-update!
          form-get
          form-set!
          form-update!
          namespace-get
          namespace-set!
          namespace-update!
          is-nullable?-get
          is-nullable?-set!
          is-nullable?-update!
          type-get
          type-set!
          type-update!
          nesting-level-get
          nesting-level-set!
          nesting-level-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.Serialization.XmlArrayItemAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Xml.Serialization.XmlArrayItemAttribute a))
  (define (xml-array-item-attribute? a)
    (clr-is System.Xml.Serialization.XmlArrayItemAttribute a))
  (define-field-port
    data-type-get
    data-type-set!
    data-type-update!
    (property:)
    System.Xml.Serialization.XmlArrayItemAttribute
    DataType
    System.String)
  (define-field-port
    element-name-get
    element-name-set!
    element-name-update!
    (property:)
    System.Xml.Serialization.XmlArrayItemAttribute
    ElementName
    System.String)
  (define-field-port
    form-get
    form-set!
    form-update!
    (property:)
    System.Xml.Serialization.XmlArrayItemAttribute
    Form
    System.Xml.Schema.XmlSchemaForm)
  (define-field-port
    namespace-get
    namespace-set!
    namespace-update!
    (property:)
    System.Xml.Serialization.XmlArrayItemAttribute
    Namespace
    System.String)
  (define-field-port
    is-nullable?-get
    is-nullable?-set!
    is-nullable?-update!
    (property:)
    System.Xml.Serialization.XmlArrayItemAttribute
    IsNullable
    System.Boolean)
  (define-field-port
    type-get
    type-set!
    type-update!
    (property:)
    System.Xml.Serialization.XmlArrayItemAttribute
    Type
    System.Type)
  (define-field-port
    nesting-level-get
    nesting-level-set!
    nesting-level-update!
    (property:)
    System.Xml.Serialization.XmlArrayItemAttribute
    NestingLevel
    System.Int32))
