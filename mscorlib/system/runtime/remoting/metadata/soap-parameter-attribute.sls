(library (system runtime remoting metadata soap-parameter-attribute)
  (export new is? soap-parameter-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Remoting.Metadata.SoapParameterAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Remoting.Metadata.SoapParameterAttribute a))
  (define (soap-parameter-attribute? a)
    (clr-is System.Runtime.Remoting.Metadata.SoapParameterAttribute a)))
