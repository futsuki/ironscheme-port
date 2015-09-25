(library (mono xml schema xsd-validation-state)
  (export new
          is?
          xsd-validation-state?
          evaluate-start-element
          get-expected-particles
          evaluate-end-element?
          invalid
          manager
          occured)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Xml.Schema.XsdValidationState a ...)))))
  (define (is? a) (clr-is Mono.Xml.Schema.XsdValidationState a))
  (define (xsd-validation-state? a)
    (clr-is Mono.Xml.Schema.XsdValidationState a))
  (define-method-port
    evaluate-start-element
    Mono.Xml.Schema.XsdValidationState
    EvaluateStartElement
    (Mono.Xml.Schema.XsdValidationState System.String System.String))
  (define-method-port
    get-expected-particles
    Mono.Xml.Schema.XsdValidationState
    GetExpectedParticles
    (System.Void System.Collections.ArrayList))
  (define-method-port
    evaluate-end-element?
    Mono.Xml.Schema.XsdValidationState
    EvaluateEndElement
    (System.Boolean))
  (define-field-port
    invalid
    #f
    #f
    (static: property:)
    Mono.Xml.Schema.XsdValidationState
    Invalid
    Mono.Xml.Schema.XsdInvalidValidationState)
  (define-field-port
    manager
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdValidationState
    Manager
    Mono.Xml.Schema.XsdParticleStateManager)
  (define-field-port
    occured
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdValidationState
    Occured
    System.Int32))
