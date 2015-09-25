(library (mono xml schema xsd-identity-field)
  (export new is? xsd-identity-field? paths index)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Xml.Schema.XsdIdentityField a ...)))))
  (define (is? a) (clr-is Mono.Xml.Schema.XsdIdentityField a))
  (define (xsd-identity-field? a)
    (clr-is Mono.Xml.Schema.XsdIdentityField a))
  (define-field-port
    paths
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdIdentityField
    Paths
    Mono.Xml.Schema.XsdIdentityPath[])
  (define-field-port
    index
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdIdentityField
    Index
    System.Int32))
