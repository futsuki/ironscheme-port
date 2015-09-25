(library (system xml xpath xpath-exception)
  (export new is? xpath-exception? get-object-data message)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.XPath.XPathException a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.XPathException a))
  (define (xpath-exception? a)
    (clr-is System.Xml.XPath.XPathException a))
  (define-method-port
    get-object-data
    System.Xml.XPath.XPathException
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-field-port
    message
    #f
    #f
    (property:)
    System.Xml.XPath.XPathException
    Message
    System.String))
