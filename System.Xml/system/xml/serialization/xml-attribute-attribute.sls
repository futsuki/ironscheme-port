(library (system xml serialization xml-attribute-attribute)
  (export new
          is?
          xml-attribute-attribute?
          attribute-name-get
          attribute-name-set!
          attribute-name-update!
          data-type-get
          data-type-set!
          data-type-update!
          form-get
          form-set!
          form-update!
          namespace-get
          namespace-set!
          namespace-update!
          type-get
          type-set!
          type-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.Serialization.XmlAttributeAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Xml.Serialization.XmlAttributeAttribute a))
  (define (xml-attribute-attribute? a)
    (clr-is System.Xml.Serialization.XmlAttributeAttribute a))
  (define-field-port
    attribute-name-get
    attribute-name-set!
    attribute-name-update!
    (property:)
    System.Xml.Serialization.XmlAttributeAttribute
    AttributeName
    System.String)
  (define-field-port
    data-type-get
    data-type-set!
    data-type-update!
    (property:)
    System.Xml.Serialization.XmlAttributeAttribute
    DataType
    System.String)
  (define-field-port
    form-get
    form-set!
    form-update!
    (property:)
    System.Xml.Serialization.XmlAttributeAttribute
    Form
    System.Xml.Schema.XmlSchemaForm)
  (define-field-port
    namespace-get
    namespace-set!
    namespace-update!
    (property:)
    System.Xml.Serialization.XmlAttributeAttribute
    Namespace
    System.String)
  (define-field-port
    type-get
    type-set!
    type-update!
    (property:)
    System.Xml.Serialization.XmlAttributeAttribute
    Type
    System.Type))
