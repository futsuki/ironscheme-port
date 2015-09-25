(library (system runtime serialization on-deserialized-attribute)
  (export new is? on-deserialized-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Serialization.OnDeserializedAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Serialization.OnDeserializedAttribute a))
  (define (on-deserialized-attribute? a)
    (clr-is System.Runtime.Serialization.OnDeserializedAttribute a)))
