(library (mono xml schema xsd-identity-selector)
  (export new is? xsd-identity-selector? add-field paths fields)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Xml.Schema.XsdIdentitySelector a ...)))))
  (define (is? a) (clr-is Mono.Xml.Schema.XsdIdentitySelector a))
  (define (xsd-identity-selector? a)
    (clr-is Mono.Xml.Schema.XsdIdentitySelector a))
  (define-method-port
    add-field
    Mono.Xml.Schema.XsdIdentitySelector
    AddField
    (System.Void Mono.Xml.Schema.XsdIdentityField))
  (define-field-port
    paths
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdIdentitySelector
    Paths
    Mono.Xml.Schema.XsdIdentityPath[])
  (define-field-port
    fields
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdIdentitySelector
    Fields
    Mono.Xml.Schema.XsdIdentityField[]))
