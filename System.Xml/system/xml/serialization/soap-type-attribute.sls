(library (system xml serialization soap-type-attribute)
  (export new
          is?
          soap-type-attribute?
          include-in-schema?-get
          include-in-schema?-set!
          include-in-schema?-update!
          namespace-get
          namespace-set!
          namespace-update!
          type-name-get
          type-name-set!
          type-name-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.Serialization.SoapTypeAttribute
             a
             ...)))))
  (define (is? a) (clr-is System.Xml.Serialization.SoapTypeAttribute a))
  (define (soap-type-attribute? a)
    (clr-is System.Xml.Serialization.SoapTypeAttribute a))
  (define-field-port
    include-in-schema?-get
    include-in-schema?-set!
    include-in-schema?-update!
    (property:)
    System.Xml.Serialization.SoapTypeAttribute
    IncludeInSchema
    System.Boolean)
  (define-field-port
    namespace-get
    namespace-set!
    namespace-update!
    (property:)
    System.Xml.Serialization.SoapTypeAttribute
    Namespace
    System.String)
  (define-field-port
    type-name-get
    type-name-set!
    type-name-update!
    (property:)
    System.Xml.Serialization.SoapTypeAttribute
    TypeName
    System.String))
