(library (system xml serialization xml-root-attribute)
  (export new
          is?
          xml-root-attribute?
          data-type-get
          data-type-set!
          data-type-update!
          element-name-get
          element-name-set!
          element-name-update!
          is-nullable?-get
          is-nullable?-set!
          is-nullable?-update!
          is-nullable-specified?
          namespace-get
          namespace-set!
          namespace-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.Serialization.XmlRootAttribute a ...)))))
  (define (is? a) (clr-is System.Xml.Serialization.XmlRootAttribute a))
  (define (xml-root-attribute? a)
    (clr-is System.Xml.Serialization.XmlRootAttribute a))
  (define-field-port
    data-type-get
    data-type-set!
    data-type-update!
    (property:)
    System.Xml.Serialization.XmlRootAttribute
    DataType
    System.String)
  (define-field-port
    element-name-get
    element-name-set!
    element-name-update!
    (property:)
    System.Xml.Serialization.XmlRootAttribute
    ElementName
    System.String)
  (define-field-port
    is-nullable?-get
    is-nullable?-set!
    is-nullable?-update!
    (property:)
    System.Xml.Serialization.XmlRootAttribute
    IsNullable
    System.Boolean)
  (define-field-port
    is-nullable-specified?
    #f
    #f
    (property:)
    System.Xml.Serialization.XmlRootAttribute
    IsNullableSpecified
    System.Boolean)
  (define-field-port
    namespace-get
    namespace-set!
    namespace-update!
    (property:)
    System.Xml.Serialization.XmlRootAttribute
    Namespace
    System.String))
