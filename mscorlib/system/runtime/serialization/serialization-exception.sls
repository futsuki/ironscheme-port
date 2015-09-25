(library (system runtime serialization serialization-exception)
  (export new is? serialization-exception?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Serialization.SerializationException
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Serialization.SerializationException a))
  (define (serialization-exception? a)
    (clr-is System.Runtime.Serialization.SerializationException a)))
