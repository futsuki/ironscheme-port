(library (system xml serialization soap-map-code-generator)
  (export new is? soap-map-code-generator?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.Serialization.SoapMapCodeGenerator
             a
             ...)))))
  (define (is? a)
    (clr-is System.Xml.Serialization.SoapMapCodeGenerator a))
  (define (soap-map-code-generator? a)
    (clr-is System.Xml.Serialization.SoapMapCodeGenerator a)))
