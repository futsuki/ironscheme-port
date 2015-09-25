(library (system
          runtime
          remoting
          metadata
          w3c-xsd2001
          soap-normalized-string)
  (export new
          is?
          soap-normalized-string?
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
             System.Runtime.Remoting.Metadata.W3cXsd2001.SoapNormalizedString
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Runtime.Remoting.Metadata.W3cXsd2001.SoapNormalizedString
      a))
  (define (soap-normalized-string? a)
    (clr-is
      System.Runtime.Remoting.Metadata.W3cXsd2001.SoapNormalizedString
      a))
  (define-method-port
    parse
    System.Runtime.Remoting.Metadata.W3cXsd2001.SoapNormalizedString
    Parse
    (static:
      System.Runtime.Remoting.Metadata.W3cXsd2001.SoapNormalizedString
      System.String))
  (define-method-port
    get-xsd-type
    System.Runtime.Remoting.Metadata.W3cXsd2001.SoapNormalizedString
    GetXsdType
    (System.String))
  (define-method-port
    to-string
    System.Runtime.Remoting.Metadata.W3cXsd2001.SoapNormalizedString
    ToString
    (System.String))
  (define-field-port
    value-get
    value-set!
    value-update!
    (property:)
    System.Runtime.Remoting.Metadata.W3cXsd2001.SoapNormalizedString
    Value
    System.String)
  (define-field-port
    xsd-type
    #f
    #f
    (static: property:)
    System.Runtime.Remoting.Metadata.W3cXsd2001.SoapNormalizedString
    XsdType
    System.String))
