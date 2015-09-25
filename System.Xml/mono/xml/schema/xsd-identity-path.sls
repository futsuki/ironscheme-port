(library (mono xml schema xsd-identity-path)
  (export new
          is?
          xsd-identity-path?
          ordered-steps-get
          ordered-steps-set!
          ordered-steps-update!
          descendants?-get
          descendants?-set!
          descendants?-update!
          is-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Xml.Schema.XsdIdentityPath a ...)))))
  (define (is? a) (clr-is Mono.Xml.Schema.XsdIdentityPath a))
  (define (xsd-identity-path? a)
    (clr-is Mono.Xml.Schema.XsdIdentityPath a))
  (define-field-port
    ordered-steps-get
    ordered-steps-set!
    ordered-steps-update!
    ()
    Mono.Xml.Schema.XsdIdentityPath
    OrderedSteps
    Mono.Xml.Schema.XsdIdentityStep[])
  (define-field-port
    descendants?-get
    descendants?-set!
    descendants?-update!
    ()
    Mono.Xml.Schema.XsdIdentityPath
    Descendants
    System.Boolean)
  (define-field-port
    is-attribute?
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdIdentityPath
    IsAttribute
    System.Boolean))
