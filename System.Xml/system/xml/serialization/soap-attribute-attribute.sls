(library (system xml serialization soap-attribute-attribute)
  (export new
          is?
          soap-attribute-attribute?
          attribute-name-get
          attribute-name-set!
          attribute-name-update!
          data-type-get
          data-type-set!
          data-type-update!
          namespace-get
          namespace-set!
          namespace-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.Serialization.SoapAttributeAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Xml.Serialization.SoapAttributeAttribute a))
  (define (soap-attribute-attribute? a)
    (clr-is System.Xml.Serialization.SoapAttributeAttribute a))
  (define-field-port
    attribute-name-get
    attribute-name-set!
    attribute-name-update!
    (property:)
    System.Xml.Serialization.SoapAttributeAttribute
    AttributeName
    System.String)
  (define-field-port
    data-type-get
    data-type-set!
    data-type-update!
    (property:)
    System.Xml.Serialization.SoapAttributeAttribute
    DataType
    System.String)
  (define-field-port
    namespace-get
    namespace-set!
    namespace-update!
    (property:)
    System.Xml.Serialization.SoapAttributeAttribute
    Namespace
    System.String))
