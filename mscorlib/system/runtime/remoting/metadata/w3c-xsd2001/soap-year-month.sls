(library (system runtime remoting metadata w3c-xsd2001 soap-year-month)
  (export new
          is?
          soap-year-month?
          parse
          get-xsd-type
          to-string
          sign-get
          sign-set!
          sign-update!
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
             System.Runtime.Remoting.Metadata.W3cXsd2001.SoapYearMonth
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Runtime.Remoting.Metadata.W3cXsd2001.SoapYearMonth
      a))
  (define (soap-year-month? a)
    (clr-is
      System.Runtime.Remoting.Metadata.W3cXsd2001.SoapYearMonth
      a))
  (define-method-port
    parse
    System.Runtime.Remoting.Metadata.W3cXsd2001.SoapYearMonth
    Parse
    (static:
      System.Runtime.Remoting.Metadata.W3cXsd2001.SoapYearMonth
      System.String))
  (define-method-port
    get-xsd-type
    System.Runtime.Remoting.Metadata.W3cXsd2001.SoapYearMonth
    GetXsdType
    (System.String))
  (define-method-port
    to-string
    System.Runtime.Remoting.Metadata.W3cXsd2001.SoapYearMonth
    ToString
    (System.String))
  (define-field-port
    sign-get
    sign-set!
    sign-update!
    (property:)
    System.Runtime.Remoting.Metadata.W3cXsd2001.SoapYearMonth
    Sign
    System.Int32)
  (define-field-port
    value-get
    value-set!
    value-update!
    (property:)
    System.Runtime.Remoting.Metadata.W3cXsd2001.SoapYearMonth
    Value
    System.DateTime)
  (define-field-port
    xsd-type
    #f
    #f
    (static: property:)
    System.Runtime.Remoting.Metadata.W3cXsd2001.SoapYearMonth
    XsdType
    System.String))
