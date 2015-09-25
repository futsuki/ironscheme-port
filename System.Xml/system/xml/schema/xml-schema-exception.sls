(library (system xml schema xml-schema-exception)
  (export new
          is?
          xml-schema-exception?
          get-object-data
          line-number
          line-position
          source-schema-object
          source-uri
          message)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.Schema.XmlSchemaException a ...)))))
  (define (is? a) (clr-is System.Xml.Schema.XmlSchemaException a))
  (define (xml-schema-exception? a)
    (clr-is System.Xml.Schema.XmlSchemaException a))
  (define-method-port
    get-object-data
    System.Xml.Schema.XmlSchemaException
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-field-port
    line-number
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaException
    LineNumber
    System.Int32)
  (define-field-port
    line-position
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaException
    LinePosition
    System.Int32)
  (define-field-port
    source-schema-object
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaException
    SourceSchemaObject
    System.Xml.Schema.XmlSchemaObject)
  (define-field-port
    source-uri
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaException
    SourceUri
    System.String)
  (define-field-port
    message
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaException
    Message
    System.String))
