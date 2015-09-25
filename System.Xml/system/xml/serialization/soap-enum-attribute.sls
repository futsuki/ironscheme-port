(library (system xml serialization soap-enum-attribute)
  (export new is? soap-enum-attribute? name-get name-set! name-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.Serialization.SoapEnumAttribute
             a
             ...)))))
  (define (is? a) (clr-is System.Xml.Serialization.SoapEnumAttribute a))
  (define (soap-enum-attribute? a)
    (clr-is System.Xml.Serialization.SoapEnumAttribute a))
  (define-field-port
    name-get
    name-set!
    name-update!
    (property:)
    System.Xml.Serialization.SoapEnumAttribute
    Name
    System.String))
