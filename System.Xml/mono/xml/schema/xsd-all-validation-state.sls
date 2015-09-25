(library (mono xml schema xsd-all-validation-state)
  (export new
          is?
          xsd-all-validation-state?
          evaluate-start-element
          get-expected-particles
          evaluate-end-element?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Xml.Schema.XsdAllValidationState a ...)))))
  (define (is? a) (clr-is Mono.Xml.Schema.XsdAllValidationState a))
  (define (xsd-all-validation-state? a)
    (clr-is Mono.Xml.Schema.XsdAllValidationState a))
  (define-method-port
    evaluate-start-element
    Mono.Xml.Schema.XsdAllValidationState
    EvaluateStartElement
    (Mono.Xml.Schema.XsdValidationState System.String System.String))
  (define-method-port
    get-expected-particles
    Mono.Xml.Schema.XsdAllValidationState
    GetExpectedParticles
    (System.Void System.Collections.ArrayList))
  (define-method-port
    evaluate-end-element?
    Mono.Xml.Schema.XsdAllValidationState
    EvaluateEndElement
    (System.Boolean)))
