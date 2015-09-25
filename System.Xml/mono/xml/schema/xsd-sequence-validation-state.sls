(library (mono xml schema xsd-sequence-validation-state)
  (export new
          is?
          xsd-sequence-validation-state?
          evaluate-start-element
          get-expected-particles
          evaluate-end-element?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             Mono.Xml.Schema.XsdSequenceValidationState
             a
             ...)))))
  (define (is? a) (clr-is Mono.Xml.Schema.XsdSequenceValidationState a))
  (define (xsd-sequence-validation-state? a)
    (clr-is Mono.Xml.Schema.XsdSequenceValidationState a))
  (define-method-port
    evaluate-start-element
    Mono.Xml.Schema.XsdSequenceValidationState
    EvaluateStartElement
    (Mono.Xml.Schema.XsdValidationState System.String System.String))
  (define-method-port
    get-expected-particles
    Mono.Xml.Schema.XsdSequenceValidationState
    GetExpectedParticles
    (System.Void System.Collections.ArrayList))
  (define-method-port
    evaluate-end-element?
    Mono.Xml.Schema.XsdSequenceValidationState
    EvaluateEndElement
    (System.Boolean)))
