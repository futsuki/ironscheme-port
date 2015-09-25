(library (system xml serialization soap-type-serialization-source)
  (export new is? soap-type-serialization-source? get-hash-code equals?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.Serialization.SoapTypeSerializationSource
             a
             ...)))))
  (define (is? a)
    (clr-is System.Xml.Serialization.SoapTypeSerializationSource a))
  (define (soap-type-serialization-source? a)
    (clr-is System.Xml.Serialization.SoapTypeSerializationSource a))
  (define-method-port
    get-hash-code
    System.Xml.Serialization.SoapTypeSerializationSource
    GetHashCode
    (System.Int32))
  (define-method-port
    equals?
    System.Xml.Serialization.SoapTypeSerializationSource
    Equals
    (System.Boolean System.Object)))
