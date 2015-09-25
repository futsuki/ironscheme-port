(library (system runtime remoting metadata w3c-xsd2001 soap-idrefs)
  (export new
          is?
          soap-idrefs?
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
             System.Runtime.Remoting.Metadata.W3cXsd2001.SoapIdrefs
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Remoting.Metadata.W3cXsd2001.SoapIdrefs a))
  (define (soap-idrefs? a)
    (clr-is System.Runtime.Remoting.Metadata.W3cXsd2001.SoapIdrefs a))
  (define-method-port
    parse
    System.Runtime.Remoting.Metadata.W3cXsd2001.SoapIdrefs
    Parse
    (static:
      System.Runtime.Remoting.Metadata.W3cXsd2001.SoapIdrefs
      System.String))
  (define-method-port
    get-xsd-type
    System.Runtime.Remoting.Metadata.W3cXsd2001.SoapIdrefs
    GetXsdType
    (System.String))
  (define-method-port
    to-string
    System.Runtime.Remoting.Metadata.W3cXsd2001.SoapIdrefs
    ToString
    (System.String))
  (define-field-port
    value-get
    value-set!
    value-update!
    (property:)
    System.Runtime.Remoting.Metadata.W3cXsd2001.SoapIdrefs
    Value
    System.String)
  (define-field-port
    xsd-type
    #f
    #f
    (static: property:)
    System.Runtime.Remoting.Metadata.W3cXsd2001.SoapIdrefs
    XsdType
    System.String))
