(library (system runtime serialization on-deserializing-attribute)
  (export new is? on-deserializing-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Serialization.OnDeserializingAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Serialization.OnDeserializingAttribute a))
  (define (on-deserializing-attribute? a)
    (clr-is System.Runtime.Serialization.OnDeserializingAttribute a)))
