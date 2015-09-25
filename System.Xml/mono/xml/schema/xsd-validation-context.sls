(library (mono xml schema xsd-validation-context)
  (export new
          is?
          xsd-validation-context?
          pop-current-element
          evaluate-start-element
          push-current-element
          evaluate-end-element?
          clone
          xsi-type-get
          xsi-type-set!
          xsi-type-update!
          element
          actual-type
          actual-schema-type
          is-invalid?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Xml.Schema.XsdValidationContext a ...)))))
  (define (is? a) (clr-is Mono.Xml.Schema.XsdValidationContext a))
  (define (xsd-validation-context? a)
    (clr-is Mono.Xml.Schema.XsdValidationContext a))
  (define-method-port
    pop-current-element
    Mono.Xml.Schema.XsdValidationContext
    PopCurrentElement
    (System.Void))
  (define-method-port
    evaluate-start-element
    Mono.Xml.Schema.XsdValidationContext
    EvaluateStartElement
    (System.Void System.String System.String))
  (define-method-port
    push-current-element
    Mono.Xml.Schema.XsdValidationContext
    PushCurrentElement
    (System.Void System.Xml.Schema.XmlSchemaElement))
  (define-method-port
    evaluate-end-element?
    Mono.Xml.Schema.XsdValidationContext
    EvaluateEndElement
    (System.Boolean))
  (define-method-port
    clone
    Mono.Xml.Schema.XsdValidationContext
    Clone
    (System.Object))
  (define-field-port
    xsi-type-get
    xsi-type-set!
    xsi-type-update!
    (property:)
    Mono.Xml.Schema.XsdValidationContext
    XsiType
    System.Object)
  (define-field-port
    element
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdValidationContext
    Element
    System.Xml.Schema.XmlSchemaElement)
  (define-field-port
    actual-type
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdValidationContext
    ActualType
    System.Object)
  (define-field-port
    actual-schema-type
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdValidationContext
    ActualSchemaType
    System.Xml.Schema.XmlSchemaType)
  (define-field-port
    is-invalid?
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdValidationContext
    IsInvalid
    System.Boolean))
