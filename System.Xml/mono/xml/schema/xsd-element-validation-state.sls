(library (mono xml schema xsd-element-validation-state)
  (export new
          is?
          xsd-element-validation-state?
          evaluate-start-element
          get-expected-particles
          evaluate-end-element?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Xml.Schema.XsdElementValidationState a ...)))))
  (define (is? a) (clr-is Mono.Xml.Schema.XsdElementValidationState a))
  (define (xsd-element-validation-state? a)
    (clr-is Mono.Xml.Schema.XsdElementValidationState a))
  (define-method-port
    evaluate-start-element
    Mono.Xml.Schema.XsdElementValidationState
    EvaluateStartElement
    (Mono.Xml.Schema.XsdValidationState System.String System.String))
  (define-method-port
    get-expected-particles
    Mono.Xml.Schema.XsdElementValidationState
    GetExpectedParticles
    (System.Void System.Collections.ArrayList))
  (define-method-port
    evaluate-end-element?
    Mono.Xml.Schema.XsdElementValidationState
    EvaluateEndElement
    (System.Boolean)))
