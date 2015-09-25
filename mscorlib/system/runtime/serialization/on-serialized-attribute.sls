(library (system runtime serialization on-serialized-attribute)
  (export new is? on-serialized-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Serialization.OnSerializedAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Serialization.OnSerializedAttribute a))
  (define (on-serialized-attribute? a)
    (clr-is System.Runtime.Serialization.OnSerializedAttribute a)))
