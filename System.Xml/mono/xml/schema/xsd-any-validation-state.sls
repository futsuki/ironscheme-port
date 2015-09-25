(library (mono xml schema xsd-any-validation-state)
  (export new
          is?
          xsd-any-validation-state?
          evaluate-start-element
          get-expected-particles
          evaluate-end-element?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Xml.Schema.XsdAnyValidationState a ...)))))
  (define (is? a) (clr-is Mono.Xml.Schema.XsdAnyValidationState a))
  (define (xsd-any-validation-state? a)
    (clr-is Mono.Xml.Schema.XsdAnyValidationState a))
  (define-method-port
    evaluate-start-element
    Mono.Xml.Schema.XsdAnyValidationState
    EvaluateStartElement
    (Mono.Xml.Schema.XsdValidationState System.String System.String))
  (define-method-port
    get-expected-particles
    Mono.Xml.Schema.XsdAnyValidationState
    GetExpectedParticles
    (System.Void System.Collections.ArrayList))
  (define-method-port
    evaluate-end-element?
    Mono.Xml.Schema.XsdAnyValidationState
    EvaluateEndElement
    (System.Boolean)))
