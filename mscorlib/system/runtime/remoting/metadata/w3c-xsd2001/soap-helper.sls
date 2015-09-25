(library (system runtime remoting metadata w3c-xsd2001 soap-helper)
  (export new is? soap-helper? get-exception normalize)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Remoting.Metadata.W3cXsd2001.SoapHelper
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Remoting.Metadata.W3cXsd2001.SoapHelper a))
  (define (soap-helper? a)
    (clr-is System.Runtime.Remoting.Metadata.W3cXsd2001.SoapHelper a))
  (define-method-port
    get-exception
    System.Runtime.Remoting.Metadata.W3cXsd2001.SoapHelper
    GetException
    (static:
      System.Exception
      System.Runtime.Remoting.Metadata.W3cXsd2001.ISoapXsd
      System.String))
  (define-method-port
    normalize
    System.Runtime.Remoting.Metadata.W3cXsd2001.SoapHelper
    Normalize
    (static: System.String System.String)))
