(library (mono xml schema xsd-appended-validation-state)
  (export new
          is?
          xsd-appended-validation-state?
          evaluate-start-element
          get-expected-particles
          evaluate-end-element?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             Mono.Xml.Schema.XsdAppendedValidationState
             a
             ...)))))
  (define (is? a) (clr-is Mono.Xml.Schema.XsdAppendedValidationState a))
  (define (xsd-appended-validation-state? a)
    (clr-is Mono.Xml.Schema.XsdAppendedValidationState a))
  (define-method-port
    evaluate-start-element
    Mono.Xml.Schema.XsdAppendedValidationState
    EvaluateStartElement
    (Mono.Xml.Schema.XsdValidationState System.String System.String))
  (define-method-port
    get-expected-particles
    Mono.Xml.Schema.XsdAppendedValidationState
    GetExpectedParticles
    (System.Void System.Collections.ArrayList))
  (define-method-port
    evaluate-end-element?
    Mono.Xml.Schema.XsdAppendedValidationState
    EvaluateEndElement
    (System.Boolean)))
