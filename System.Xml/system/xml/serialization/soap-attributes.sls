(library (system xml serialization soap-attributes)
  (export new
          is?
          soap-attributes?
          soap-attribute-get
          soap-attribute-set!
          soap-attribute-update!
          soap-default-value-get
          soap-default-value-set!
          soap-default-value-update!
          soap-element-get
          soap-element-set!
          soap-element-update!
          soap-enum-get
          soap-enum-set!
          soap-enum-update!
          soap-ignore?-get
          soap-ignore?-set!
          soap-ignore?-update!
          soap-type-get
          soap-type-set!
          soap-type-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.Serialization.SoapAttributes a ...)))))
  (define (is? a) (clr-is System.Xml.Serialization.SoapAttributes a))
  (define (soap-attributes? a)
    (clr-is System.Xml.Serialization.SoapAttributes a))
  (define-field-port
    soap-attribute-get
    soap-attribute-set!
    soap-attribute-update!
    (property:)
    System.Xml.Serialization.SoapAttributes
    SoapAttribute
    System.Xml.Serialization.SoapAttributeAttribute)
  (define-field-port
    soap-default-value-get
    soap-default-value-set!
    soap-default-value-update!
    (property:)
    System.Xml.Serialization.SoapAttributes
    SoapDefaultValue
    System.Object)
  (define-field-port
    soap-element-get
    soap-element-set!
    soap-element-update!
    (property:)
    System.Xml.Serialization.SoapAttributes
    SoapElement
    System.Xml.Serialization.SoapElementAttribute)
  (define-field-port
    soap-enum-get
    soap-enum-set!
    soap-enum-update!
    (property:)
    System.Xml.Serialization.SoapAttributes
    SoapEnum
    System.Xml.Serialization.SoapEnumAttribute)
  (define-field-port
    soap-ignore?-get
    soap-ignore?-set!
    soap-ignore?-update!
    (property:)
    System.Xml.Serialization.SoapAttributes
    SoapIgnore
    System.Boolean)
  (define-field-port
    soap-type-get
    soap-type-set!
    soap-type-update!
    (property:)
    System.Xml.Serialization.SoapAttributes
    SoapType
    System.Xml.Serialization.SoapTypeAttribute))
