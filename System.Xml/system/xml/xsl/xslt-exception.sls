(library (system xml xsl xslt-exception)
  (export new
          is?
          xslt-exception?
          get-object-data
          line-number
          line-position
          message
          source-uri)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.Xsl.XsltException a ...)))))
  (define (is? a) (clr-is System.Xml.Xsl.XsltException a))
  (define (xslt-exception? a) (clr-is System.Xml.Xsl.XsltException a))
  (define-method-port
    get-object-data
    System.Xml.Xsl.XsltException
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-field-port
    line-number
    #f
    #f
    (property:)
    System.Xml.Xsl.XsltException
    LineNumber
    System.Int32)
  (define-field-port
    line-position
    #f
    #f
    (property:)
    System.Xml.Xsl.XsltException
    LinePosition
    System.Int32)
  (define-field-port
    message
    #f
    #f
    (property:)
    System.Xml.Xsl.XsltException
    Message
    System.String)
  (define-field-port
    source-uri
    #f
    #f
    (property:)
    System.Xml.Xsl.XsltException
    SourceUri
    System.String))
