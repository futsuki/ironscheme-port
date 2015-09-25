(library (system xml serialization xml-array-attribute)
  (export new
          is?
          xml-array-attribute?
          element-name-get
          element-name-set!
          element-name-update!
          form-get
          form-set!
          form-update!
          is-nullable?-get
          is-nullable?-set!
          is-nullable?-update!
          namespace-get
          namespace-set!
          namespace-update!
          order-get
          order-set!
          order-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.Serialization.XmlArrayAttribute
             a
             ...)))))
  (define (is? a) (clr-is System.Xml.Serialization.XmlArrayAttribute a))
  (define (xml-array-attribute? a)
    (clr-is System.Xml.Serialization.XmlArrayAttribute a))
  (define-field-port
    element-name-get
    element-name-set!
    element-name-update!
    (property:)
    System.Xml.Serialization.XmlArrayAttribute
    ElementName
    System.String)
  (define-field-port
    form-get
    form-set!
    form-update!
    (property:)
    System.Xml.Serialization.XmlArrayAttribute
    Form
    System.Xml.Schema.XmlSchemaForm)
  (define-field-port
    is-nullable?-get
    is-nullable?-set!
    is-nullable?-update!
    (property:)
    System.Xml.Serialization.XmlArrayAttribute
    IsNullable
    System.Boolean)
  (define-field-port
    namespace-get
    namespace-set!
    namespace-update!
    (property:)
    System.Xml.Serialization.XmlArrayAttribute
    Namespace
    System.String)
  (define-field-port
    order-get
    order-set!
    order-update!
    (property:)
    System.Xml.Serialization.XmlArrayAttribute
    Order
    System.Int32))
