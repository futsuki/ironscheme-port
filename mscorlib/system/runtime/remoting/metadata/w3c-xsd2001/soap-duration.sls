(library (system runtime remoting metadata w3c-xsd2001 soap-duration)
  (export new is? soap-duration? parse to-string xsd-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Remoting.Metadata.W3cXsd2001.SoapDuration
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Remoting.Metadata.W3cXsd2001.SoapDuration a))
  (define (soap-duration? a)
    (clr-is System.Runtime.Remoting.Metadata.W3cXsd2001.SoapDuration a))
  (define-method-port
    parse
    System.Runtime.Remoting.Metadata.W3cXsd2001.SoapDuration
    Parse
    (static: System.TimeSpan System.String))
  (define-method-port
    to-string
    System.Runtime.Remoting.Metadata.W3cXsd2001.SoapDuration
    ToString
    (static: System.String System.TimeSpan))
  (define-field-port
    xsd-type
    #f
    #f
    (static: property:)
    System.Runtime.Remoting.Metadata.W3cXsd2001.SoapDuration
    XsdType
    System.String))
