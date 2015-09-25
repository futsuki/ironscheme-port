(library (system xml schema xml-schema-validator)
  (export new
          is?
          xml-schema-validator?
          get-unspecified-default-attributes
          validate-attribute
          validate-element
          validate-end-element
          get-expected-particles
          initialize
          get-expected-attributes
          validate-text
          skip-to-end-element
          add-schema
          end-validation
          validate-whitespace
          validate-end-of-attributes
          validation-event-sender-get
          validation-event-sender-set!
          validation-event-sender-update!
          line-info-provider-get
          line-info-provider-set!
          line-info-provider-update!
          xml-resolver
          source-uri-get
          source-uri-set!
          source-uri-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.Schema.XmlSchemaValidator a ...)))))
  (define (is? a) (clr-is System.Xml.Schema.XmlSchemaValidator a))
  (define (xml-schema-validator? a)
    (clr-is System.Xml.Schema.XmlSchemaValidator a))
  (define-method-port
    get-unspecified-default-attributes
    System.Xml.Schema.XmlSchemaValidator
    GetUnspecifiedDefaultAttributes
    (System.Void System.Collections.ArrayList))
  (define-method-port
    validate-attribute
    System.Xml.Schema.XmlSchemaValidator
    ValidateAttribute
    (System.Object
      System.String
      System.String
      System.Xml.Schema.XmlValueGetter
      System.Xml.Schema.XmlSchemaInfo)
    (System.Object
      System.String
      System.String
      System.String
      System.Xml.Schema.XmlSchemaInfo))
  (define-method-port
    validate-element
    System.Xml.Schema.XmlSchemaValidator
    ValidateElement
    (System.Void
      System.String
      System.String
      System.Xml.Schema.XmlSchemaInfo
      System.String
      System.String
      System.String
      System.String)
    (System.Void
      System.String
      System.String
      System.Xml.Schema.XmlSchemaInfo))
  (define-method-port
    validate-end-element
    System.Xml.Schema.XmlSchemaValidator
    ValidateEndElement
    (System.Object System.Xml.Schema.XmlSchemaInfo System.Object)
    (System.Object System.Xml.Schema.XmlSchemaInfo))
  (define-method-port
    get-expected-particles
    System.Xml.Schema.XmlSchemaValidator
    GetExpectedParticles
    (System.Xml.Schema.XmlSchemaParticle[]))
  (define-method-port
    initialize
    System.Xml.Schema.XmlSchemaValidator
    Initialize
    (System.Void System.Xml.Schema.XmlSchemaObject)
    (System.Void))
  (define-method-port
    get-expected-attributes
    System.Xml.Schema.XmlSchemaValidator
    GetExpectedAttributes
    (System.Xml.Schema.XmlSchemaAttribute[]))
  (define-method-port
    validate-text
    System.Xml.Schema.XmlSchemaValidator
    ValidateText
    (System.Void System.Xml.Schema.XmlValueGetter)
    (System.Void System.String))
  (define-method-port
    skip-to-end-element
    System.Xml.Schema.XmlSchemaValidator
    SkipToEndElement
    (System.Void System.Xml.Schema.XmlSchemaInfo))
  (define-method-port
    add-schema
    System.Xml.Schema.XmlSchemaValidator
    AddSchema
    (System.Void System.Xml.Schema.XmlSchema))
  (define-method-port
    end-validation
    System.Xml.Schema.XmlSchemaValidator
    EndValidation
    (System.Void))
  (define-method-port
    validate-whitespace
    System.Xml.Schema.XmlSchemaValidator
    ValidateWhitespace
    (System.Void System.Xml.Schema.XmlValueGetter)
    (System.Void System.String))
  (define-method-port
    validate-end-of-attributes
    System.Xml.Schema.XmlSchemaValidator
    ValidateEndOfAttributes
    (System.Void System.Xml.Schema.XmlSchemaInfo))
  (define-field-port
    validation-event-sender-get
    validation-event-sender-set!
    validation-event-sender-update!
    (property:)
    System.Xml.Schema.XmlSchemaValidator
    ValidationEventSender
    System.Object)
  (define-field-port
    line-info-provider-get
    line-info-provider-set!
    line-info-provider-update!
    (property:)
    System.Xml.Schema.XmlSchemaValidator
    LineInfoProvider
    System.Xml.IXmlLineInfo)
  (define-field-port
    #f
    xml-resolver
    #f
    (property:)
    System.Xml.Schema.XmlSchemaValidator
    XmlResolver
    System.Xml.XmlResolver)
  (define-field-port
    source-uri-get
    source-uri-set!
    source-uri-update!
    (property:)
    System.Xml.Schema.XmlSchemaValidator
    SourceUri
    System.Uri))
