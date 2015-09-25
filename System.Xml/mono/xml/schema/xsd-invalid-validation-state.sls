(library (mono xml schema xsd-invalid-validation-state)
  (export is?
          xsd-invalid-validation-state?
          evaluate-start-element
          get-expected-particles
          evaluate-end-element?)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is Mono.Xml.Schema.XsdInvalidValidationState a))
  (define (xsd-invalid-validation-state? a)
    (clr-is Mono.Xml.Schema.XsdInvalidValidationState a))
  (define-method-port
    evaluate-start-element
    Mono.Xml.Schema.XsdInvalidValidationState
    EvaluateStartElement
    (Mono.Xml.Schema.XsdValidationState System.String System.String))
  (define-method-port
    get-expected-particles
    Mono.Xml.Schema.XsdInvalidValidationState
    GetExpectedParticles
    (System.Void System.Collections.ArrayList))
  (define-method-port
    evaluate-end-element?
    Mono.Xml.Schema.XsdInvalidValidationState
    EvaluateEndElement
    (System.Boolean)))
