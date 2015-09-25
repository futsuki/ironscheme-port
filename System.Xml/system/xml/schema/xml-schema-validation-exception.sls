(library (system xml schema xml-schema-validation-exception)
  (export new
          is?
          xml-schema-validation-exception?
          get-object-data
          source-object)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.Schema.XmlSchemaValidationException
             a
             ...)))))
  (define (is? a)
    (clr-is System.Xml.Schema.XmlSchemaValidationException a))
  (define (xml-schema-validation-exception? a)
    (clr-is System.Xml.Schema.XmlSchemaValidationException a))
  (define-method-port
    get-object-data
    System.Xml.Schema.XmlSchemaValidationException
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-field-port
    source-object
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaValidationException
    SourceObject
    System.Object))
