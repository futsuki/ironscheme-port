(library (system xml serialization xml-element-attribute)
  (export new
          is?
          xml-element-attribute?
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
          order-get
          order-set!
          order-update!
          type-get
          type-set!
          type-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.Serialization.XmlElementAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Xml.Serialization.XmlElementAttribute a))
  (define (xml-element-attribute? a)
    (clr-is System.Xml.Serialization.XmlElementAttribute a))
  (define-field-port
    data-type-get
    data-type-set!
    data-type-update!
    (property:)
    System.Xml.Serialization.XmlElementAttribute
    DataType
    System.String)
  (define-field-port
    element-name-get
    element-name-set!
    element-name-update!
    (property:)
    System.Xml.Serialization.XmlElementAttribute
    ElementName
    System.String)
  (define-field-port
    form-get
    form-set!
    form-update!
    (property:)
    System.Xml.Serialization.XmlElementAttribute
    Form
    System.Xml.Schema.XmlSchemaForm)
  (define-field-port
    namespace-get
    namespace-set!
    namespace-update!
    (property:)
    System.Xml.Serialization.XmlElementAttribute
    Namespace
    System.String)
  (define-field-port
    is-nullable?-get
    is-nullable?-set!
    is-nullable?-update!
    (property:)
    System.Xml.Serialization.XmlElementAttribute
    IsNullable
    System.Boolean)
  (define-field-port
    order-get
    order-set!
    order-update!
    (property:)
    System.Xml.Serialization.XmlElementAttribute
    Order
    System.Int32)
  (define-field-port
    type-get
    type-set!
    type-update!
    (property:)
    System.Xml.Serialization.XmlElementAttribute
    Type
    System.Type))
