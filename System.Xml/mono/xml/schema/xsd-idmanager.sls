(library (mono xml schema xsd-idmanager)
  (export new
          is?
          xsd-idmanager?
          get-missing-idstring
          assess-each-attribute-identity-constraint
          has-missing-idreferences?
          on-start-element)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Xml.Schema.XsdIDManager a ...)))))
  (define (is? a) (clr-is Mono.Xml.Schema.XsdIDManager a))
  (define (xsd-idmanager? a) (clr-is Mono.Xml.Schema.XsdIDManager a))
  (define-method-port
    get-missing-idstring
    Mono.Xml.Schema.XsdIDManager
    GetMissingIDString
    (System.String))
  (define-method-port
    assess-each-attribute-identity-constraint
    Mono.Xml.Schema.XsdIDManager
    AssessEachAttributeIdentityConstraint
    (System.String
      System.Xml.Schema.XmlSchemaDatatype
      System.Object
      System.String))
  (define-method-port
    has-missing-idreferences?
    Mono.Xml.Schema.XsdIDManager
    HasMissingIDReferences
    (System.Boolean))
  (define-method-port
    on-start-element
    Mono.Xml.Schema.XsdIDManager
    OnStartElement
    (System.Void)))
