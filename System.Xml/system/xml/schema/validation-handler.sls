(library (system xml schema validation-handler)
  (export new is? validation-handler? raise-validation-event)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.Schema.ValidationHandler a ...)))))
  (define (is? a) (clr-is System.Xml.Schema.ValidationHandler a))
  (define (validation-handler? a)
    (clr-is System.Xml.Schema.ValidationHandler a))
  (define-method-port
    raise-validation-event
    System.Xml.Schema.ValidationHandler
    RaiseValidationEvent
    (static:
      System.Void
      System.Xml.Schema.ValidationEventHandler
      System.Exception
      System.String
      System.Xml.Schema.XmlSchemaObject
      System.Object
      System.String
      System.Xml.Schema.XmlSeverityType)))
