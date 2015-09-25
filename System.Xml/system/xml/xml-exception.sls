(library (system xml xml-exception)
  (export new
          is?
          xml-exception?
          get-object-data
          line-number
          line-position
          source-uri
          message)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.XmlException a ...)))))
  (define (is? a) (clr-is System.Xml.XmlException a))
  (define (xml-exception? a) (clr-is System.Xml.XmlException a))
  (define-method-port
    get-object-data
    System.Xml.XmlException
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-field-port
    line-number
    #f
    #f
    (property:)
    System.Xml.XmlException
    LineNumber
    System.Int32)
  (define-field-port
    line-position
    #f
    #f
    (property:)
    System.Xml.XmlException
    LinePosition
    System.Int32)
  (define-field-port
    source-uri
    #f
    #f
    (property:)
    System.Xml.XmlException
    SourceUri
    System.String)
  (define-field-port
    message
    #f
    #f
    (property:)
    System.Xml.XmlException
    Message
    System.String))
