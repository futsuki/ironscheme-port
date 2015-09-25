(library (system runtime remoting metadata w3c-xsd2001 soap-month-day)
  (export new
          is?
          soap-month-day?
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
             System.Runtime.Remoting.Metadata.W3cXsd2001.SoapMonthDay
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Remoting.Metadata.W3cXsd2001.SoapMonthDay a))
  (define (soap-month-day? a)
    (clr-is System.Runtime.Remoting.Metadata.W3cXsd2001.SoapMonthDay a))
  (define-method-port
    parse
    System.Runtime.Remoting.Metadata.W3cXsd2001.SoapMonthDay
    Parse
    (static:
      System.Runtime.Remoting.Metadata.W3cXsd2001.SoapMonthDay
      System.String))
  (define-method-port
    get-xsd-type
    System.Runtime.Remoting.Metadata.W3cXsd2001.SoapMonthDay
    GetXsdType
    (System.String))
  (define-method-port
    to-string
    System.Runtime.Remoting.Metadata.W3cXsd2001.SoapMonthDay
    ToString
    (System.String))
  (define-field-port
    value-get
    value-set!
    value-update!
    (property:)
    System.Runtime.Remoting.Metadata.W3cXsd2001.SoapMonthDay
    Value
    System.DateTime)
  (define-field-port
    xsd-type
    #f
    #f
    (static: property:)
    System.Runtime.Remoting.Metadata.W3cXsd2001.SoapMonthDay
    XsdType
    System.String))
