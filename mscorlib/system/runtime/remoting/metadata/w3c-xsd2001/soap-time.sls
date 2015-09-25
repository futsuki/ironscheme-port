(library (system runtime remoting metadata w3c-xsd2001 soap-time)
  (export new
          is?
          soap-time?
          parse
          get-xsd-type
          to-string
          value-get
          value-set!
          value-update!
          xsd-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Remoting.Metadata.W3cXsd2001.SoapTime
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Remoting.Metadata.W3cXsd2001.SoapTime a))
  (define (soap-time? a)
    (clr-is System.Runtime.Remoting.Metadata.W3cXsd2001.SoapTime a))
  (define-method-port
    parse
    System.Runtime.Remoting.Metadata.W3cXsd2001.SoapTime
    Parse
    (static:
      System.Runtime.Remoting.Metadata.W3cXsd2001.SoapTime
      System.String))
  (define-method-port
    get-xsd-type
    System.Runtime.Remoting.Metadata.W3cXsd2001.SoapTime
    GetXsdType
    (System.String))
  (define-method-port
    to-string
    System.Runtime.Remoting.Metadata.W3cXsd2001.SoapTime
    ToString
    (System.String))
  (define-field-port
    value-get
    value-set!
    value-update!
    (property:)
    System.Runtime.Remoting.Metadata.W3cXsd2001.SoapTime
    Value
    System.DateTime)
  (define-field-port
    xsd-type
    #f
    #f
    (static: property:)
    System.Runtime.Remoting.Metadata.W3cXsd2001.SoapTime
    XsdType
    System.String))
