(library (system runtime serialization on-serializing-attribute)
  (export new is? on-serializing-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Serialization.OnSerializingAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Serialization.OnSerializingAttribute a))
  (define (on-serializing-attribute? a)
    (clr-is System.Runtime.Serialization.OnSerializingAttribute a)))
