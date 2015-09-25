(library (system xml serialization soap-ignore-attribute)
  (export new is? soap-ignore-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.Serialization.SoapIgnoreAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Xml.Serialization.SoapIgnoreAttribute a))
  (define (soap-ignore-attribute? a)
    (clr-is System.Xml.Serialization.SoapIgnoreAttribute a)))
