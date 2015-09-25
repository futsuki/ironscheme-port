(library (mono xml schema xsd-identity-step)
  (export new
          is?
          xsd-identity-step?
          is-current?-get
          is-current?-set!
          is-current?-update!
          is-attribute?-get
          is-attribute?-set!
          is-attribute?-update!
          is-any-name?-get
          is-any-name?-set!
          is-any-name?-update!
          ns-name-get
          ns-name-set!
          ns-name-update!
          name-get
          name-set!
          name-update!
          namespace-get
          namespace-set!
          namespace-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Xml.Schema.XsdIdentityStep a ...)))))
  (define (is? a) (clr-is Mono.Xml.Schema.XsdIdentityStep a))
  (define (xsd-identity-step? a)
    (clr-is Mono.Xml.Schema.XsdIdentityStep a))
  (define-field-port
    is-current?-get
    is-current?-set!
    is-current?-update!
    ()
    Mono.Xml.Schema.XsdIdentityStep
    IsCurrent
    System.Boolean)
  (define-field-port
    is-attribute?-get
    is-attribute?-set!
    is-attribute?-update!
    ()
    Mono.Xml.Schema.XsdIdentityStep
    IsAttribute
    System.Boolean)
  (define-field-port
    is-any-name?-get
    is-any-name?-set!
    is-any-name?-update!
    ()
    Mono.Xml.Schema.XsdIdentityStep
    IsAnyName
    System.Boolean)
  (define-field-port
    ns-name-get
    ns-name-set!
    ns-name-update!
    ()
    Mono.Xml.Schema.XsdIdentityStep
    NsName
    System.String)
  (define-field-port
    name-get
    name-set!
    name-update!
    ()
    Mono.Xml.Schema.XsdIdentityStep
    Name
    System.String)
  (define-field-port
    namespace-get
    namespace-set!
    namespace-update!
    ()
    Mono.Xml.Schema.XsdIdentityStep
    Namespace
    System.String))
