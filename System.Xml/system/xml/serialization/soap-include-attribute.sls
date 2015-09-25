(library (system xml serialization soap-include-attribute)
  (export new
          is?
          soap-include-attribute?
          type-get
          type-set!
          type-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.Serialization.SoapIncludeAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Xml.Serialization.SoapIncludeAttribute a))
  (define (soap-include-attribute? a)
    (clr-is System.Xml.Serialization.SoapIncludeAttribute a))
  (define-field-port
    type-get
    type-set!
    type-update!
    (property:)
    System.Xml.Serialization.SoapIncludeAttribute
    Type
    System.Type))
