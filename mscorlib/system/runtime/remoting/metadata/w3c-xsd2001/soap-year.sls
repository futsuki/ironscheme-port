(library (system runtime remoting metadata w3c-xsd2001 soap-year)
  (export new
          is?
          soap-year?
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
             System.Runtime.Remoting.Metadata.W3cXsd2001.SoapYear
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Remoting.Metadata.W3cXsd2001.SoapYear a))
  (define (soap-year? a)
    (clr-is System.Runtime.Remoting.Metadata.W3cXsd2001.SoapYear a))
  (define-method-port
    parse
    System.Runtime.Remoting.Metadata.W3cXsd2001.SoapYear
    Parse
    (static:
      System.Runtime.Remoting.Metadata.W3cXsd2001.SoapYear
      System.String))
  (define-method-port
    get-xsd-type
    System.Runtime.Remoting.Metadata.W3cXsd2001.SoapYear
    GetXsdType
    (System.String))
  (define-method-port
    to-string
    System.Runtime.Remoting.Metadata.W3cXsd2001.SoapYear
    ToString
    (System.String))
  (define-field-port
    sign-get
    sign-set!
    sign-update!
    (property:)
    System.Runtime.Remoting.Metadata.W3cXsd2001.SoapYear
    Sign
    System.Int32)
  (define-field-port
    value-get
    value-set!
    value-update!
    (property:)
    System.Runtime.Remoting.Metadata.W3cXsd2001.SoapYear
    Value
    System.DateTime)
  (define-field-port
    xsd-type
    #f
    #f
    (static: property:)
    System.Runtime.Remoting.Metadata.W3cXsd2001.SoapYear
    XsdType
    System.String))
