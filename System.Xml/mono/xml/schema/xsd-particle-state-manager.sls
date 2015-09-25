(library (mono xml schema xsd-particle-state-manager)
  (export new
          is?
          xsd-particle-state-manager?
          get
          pop-context
          create
          push-context
          current-element-get
          current-element-set!
          current-element-update!
          context-stack-get
          context-stack-set!
          context-stack-update!
          context-get
          context-set!
          context-update!
          process-contents)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Xml.Schema.XsdParticleStateManager a ...)))))
  (define (is? a) (clr-is Mono.Xml.Schema.XsdParticleStateManager a))
  (define (xsd-particle-state-manager? a)
    (clr-is Mono.Xml.Schema.XsdParticleStateManager a))
  (define-method-port
    get
    Mono.Xml.Schema.XsdParticleStateManager
    Get
    (Mono.Xml.Schema.XsdValidationState
      System.Xml.Schema.XmlSchemaParticle))
  (define-method-port
    pop-context
    Mono.Xml.Schema.XsdParticleStateManager
    PopContext
    (System.Void))
  (define-method-port
    create
    Mono.Xml.Schema.XsdParticleStateManager
    Create
    (Mono.Xml.Schema.XsdValidationState
      System.Xml.Schema.XmlSchemaObject))
  (define-method-port
    push-context
    Mono.Xml.Schema.XsdParticleStateManager
    PushContext
    (System.Void))
  (define-field-port
    current-element-get
    current-element-set!
    current-element-update!
    ()
    Mono.Xml.Schema.XsdParticleStateManager
    CurrentElement
    System.Xml.Schema.XmlSchemaElement)
  (define-field-port
    context-stack-get
    context-stack-set!
    context-stack-update!
    ()
    Mono.Xml.Schema.XsdParticleStateManager
    ContextStack
    System.Collections.Stack)
  (define-field-port
    context-get
    context-set!
    context-update!
    ()
    Mono.Xml.Schema.XsdParticleStateManager
    Context
    Mono.Xml.Schema.XsdValidationContext)
  (define-field-port
    process-contents
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdParticleStateManager
    ProcessContents
    System.Xml.Schema.XmlSchemaContentProcessing))
