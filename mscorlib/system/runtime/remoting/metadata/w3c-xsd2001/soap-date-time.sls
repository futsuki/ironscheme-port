(library (system runtime remoting metadata w3c-xsd2001 soap-date-time)
  (export new is? soap-date-time? parse to-string xsd-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Remoting.Metadata.W3cXsd2001.SoapDateTime
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Remoting.Metadata.W3cXsd2001.SoapDateTime a))
  (define (soap-date-time? a)
    (clr-is System.Runtime.Remoting.Metadata.W3cXsd2001.SoapDateTime a))
  (define-method-port
    parse
    System.Runtime.Remoting.Metadata.W3cXsd2001.SoapDateTime
    Parse
    (static: System.DateTime System.String))
  (define-method-port
    to-string
    System.Runtime.Remoting.Metadata.W3cXsd2001.SoapDateTime
    ToString
    (static: System.String System.DateTime))
  (define-field-port
    xsd-type
    #f
    #f
    (static: property:)
    System.Runtime.Remoting.Metadata.W3cXsd2001.SoapDateTime
    XsdType
    System.String))
