(library (system xml schema validation-event-args)
  (export is? validation-event-args? exception message severity)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Xml.Schema.ValidationEventArgs a))
  (define (validation-event-args? a)
    (clr-is System.Xml.Schema.ValidationEventArgs a))
  (define-field-port
    exception
    #f
    #f
    (property:)
    System.Xml.Schema.ValidationEventArgs
    Exception
    System.Xml.Schema.XmlSchemaException)
  (define-field-port
    message
    #f
    #f
    (property:)
    System.Xml.Schema.ValidationEventArgs
    Message
    System.String)
  (define-field-port
    severity
    #f
    #f
    (property:)
    System.Xml.Schema.ValidationEventArgs
    Severity
    System.Xml.Schema.XmlSeverityType))
