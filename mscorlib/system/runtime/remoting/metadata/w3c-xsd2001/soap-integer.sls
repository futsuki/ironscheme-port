(library (system runtime remoting metadata w3c-xsd2001 soap-integer)
  (export new
          is?
          soap-integer?
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
             System.Runtime.Remoting.Metadata.W3cXsd2001.SoapInteger
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Remoting.Metadata.W3cXsd2001.SoapInteger a))
  (define (soap-integer? a)
    (clr-is System.Runtime.Remoting.Metadata.W3cXsd2001.SoapInteger a))
  (define-method-port
    parse
    System.Runtime.Remoting.Metadata.W3cXsd2001.SoapInteger
    Parse
    (static:
      System.Runtime.Remoting.Metadata.W3cXsd2001.SoapInteger
      System.String))
  (define-method-port
    get-xsd-type
    System.Runtime.Remoting.Metadata.W3cXsd2001.SoapInteger
    GetXsdType
    (System.String))
  (define-method-port
    to-string
    System.Runtime.Remoting.Metadata.W3cXsd2001.SoapInteger
    ToString
    (System.String))
  (define-field-port
    value-get
    value-set!
    value-update!
    (property:)
    System.Runtime.Remoting.Metadata.W3cXsd2001.SoapInteger
    Value
    System.Decimal)
  (define-field-port
    xsd-type
    #f
    #f
    (static: property:)
    System.Runtime.Remoting.Metadata.W3cXsd2001.SoapInteger
    XsdType
    System.String))
