(library (system runtime remoting metadata w3c-xsd2001 soap-day)
  (export new
          is?
          soap-day?
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
             System.Runtime.Remoting.Metadata.W3cXsd2001.SoapDay
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Remoting.Metadata.W3cXsd2001.SoapDay a))
  (define (soap-day? a)
    (clr-is System.Runtime.Remoting.Metadata.W3cXsd2001.SoapDay a))
  (define-method-port
    parse
    System.Runtime.Remoting.Metadata.W3cXsd2001.SoapDay
    Parse
    (static:
      System.Runtime.Remoting.Metadata.W3cXsd2001.SoapDay
      System.String))
  (define-method-port
    get-xsd-type
    System.Runtime.Remoting.Metadata.W3cXsd2001.SoapDay
    GetXsdType
    (System.String))
  (define-method-port
    to-string
    System.Runtime.Remoting.Metadata.W3cXsd2001.SoapDay
    ToString
    (System.String))
  (define-field-port
    value-get
    value-set!
    value-update!
    (property:)
    System.Runtime.Remoting.Metadata.W3cXsd2001.SoapDay
    Value
    System.DateTime)
  (define-field-port
    xsd-type
    #f
    #f
    (static: property:)
    System.Runtime.Remoting.Metadata.W3cXsd2001.SoapDay
    XsdType
    System.String))
