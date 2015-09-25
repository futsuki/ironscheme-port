(library (mono xml schema xsd-empty-validation-state)
  (export new
          is?
          xsd-empty-validation-state?
          evaluate-start-element
          get-expected-particles
          evaluate-end-element?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Xml.Schema.XsdEmptyValidationState a ...)))))
  (define (is? a) (clr-is Mono.Xml.Schema.XsdEmptyValidationState a))
  (define (xsd-empty-validation-state? a)
    (clr-is Mono.Xml.Schema.XsdEmptyValidationState a))
  (define-method-port
    evaluate-start-element
    Mono.Xml.Schema.XsdEmptyValidationState
    EvaluateStartElement
    (Mono.Xml.Schema.XsdValidationState System.String System.String))
  (define-method-port
    get-expected-particles
    Mono.Xml.Schema.XsdEmptyValidationState
    GetExpectedParticles
    (System.Void System.Collections.ArrayList))
  (define-method-port
    evaluate-end-element?
    Mono.Xml.Schema.XsdEmptyValidationState
    EvaluateEndElement
    (System.Boolean)))
