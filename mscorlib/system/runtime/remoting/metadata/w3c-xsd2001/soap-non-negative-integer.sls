(library (system
          runtime
          remoting
          metadata
          w3c-xsd2001
          soap-non-negative-integer)
  (export new
          is?
          soap-non-negative-integer?
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
             System.Runtime.Remoting.Metadata.W3cXsd2001.SoapNonNegativeInteger
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Runtime.Remoting.Metadata.W3cXsd2001.SoapNonNegativeInteger
      a))
  (define (soap-non-negative-integer? a)
    (clr-is
      System.Runtime.Remoting.Metadata.W3cXsd2001.SoapNonNegativeInteger
      a))
  (define-method-port
    parse
    System.Runtime.Remoting.Metadata.W3cXsd2001.SoapNonNegativeInteger
    Parse
    (static:
      System.Runtime.Remoting.Metadata.W3cXsd2001.SoapNonNegativeInteger
      System.String))
  (define-method-port
    get-xsd-type
    System.Runtime.Remoting.Metadata.W3cXsd2001.SoapNonNegativeInteger
    GetXsdType
    (System.String))
  (define-method-port
    to-string
    System.Runtime.Remoting.Metadata.W3cXsd2001.SoapNonNegativeInteger
    ToString
    (System.String))
  (define-field-port
    value-get
    value-set!
    value-update!
    (property:)
    System.Runtime.Remoting.Metadata.W3cXsd2001.SoapNonNegativeInteger
    Value
    System.Decimal)
  (define-field-port
    xsd-type
    #f
    #f
    (static: property:)
    System.Runtime.Remoting.Metadata.W3cXsd2001.SoapNonNegativeInteger
    XsdType
    System.String))
