(library (mono xml schema xsd-choice-validation-state)
  (export new
          is?
          xsd-choice-validation-state?
          evaluate-start-element
          get-expected-particles
          evaluate-end-element?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Xml.Schema.XsdChoiceValidationState a ...)))))
  (define (is? a) (clr-is Mono.Xml.Schema.XsdChoiceValidationState a))
  (define (xsd-choice-validation-state? a)
    (clr-is Mono.Xml.Schema.XsdChoiceValidationState a))
  (define-method-port
    evaluate-start-element
    Mono.Xml.Schema.XsdChoiceValidationState
    EvaluateStartElement
    (Mono.Xml.Schema.XsdValidationState System.String System.String))
  (define-method-port
    get-expected-particles
    Mono.Xml.Schema.XsdChoiceValidationState
    GetExpectedParticles
    (System.Void System.Collections.ArrayList))
  (define-method-port
    evaluate-end-element?
    Mono.Xml.Schema.XsdChoiceValidationState
    EvaluateEndElement
    (System.Boolean)))
