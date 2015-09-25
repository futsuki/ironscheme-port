(library (system xml serialization soap-element-attribute)
  (export new
          is?
          soap-element-attribute?
          data-type-get
          data-type-set!
          data-type-update!
          element-name-get
          element-name-set!
          element-name-update!
          is-nullable?-get
          is-nullable?-set!
          is-nullable?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.Serialization.SoapElementAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Xml.Serialization.SoapElementAttribute a))
  (define (soap-element-attribute? a)
    (clr-is System.Xml.Serialization.SoapElementAttribute a))
  (define-field-port
    data-type-get
    data-type-set!
    data-type-update!
    (property:)
    System.Xml.Serialization.SoapElementAttribute
    DataType
    System.String)
  (define-field-port
    element-name-get
    element-name-set!
    element-name-update!
    (property:)
    System.Xml.Serialization.SoapElementAttribute
    ElementName
    System.String)
  (define-field-port
    is-nullable?-get
    is-nullable?-set!
    is-nullable?-update!
    (property:)
    System.Xml.Serialization.SoapElementAttribute
    IsNullable
    System.Boolean))
