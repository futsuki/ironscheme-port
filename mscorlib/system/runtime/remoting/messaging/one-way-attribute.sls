(library (system runtime remoting messaging one-way-attribute)
  (export new is? one-way-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Remoting.Messaging.OneWayAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Remoting.Messaging.OneWayAttribute a))
  (define (one-way-attribute? a)
    (clr-is System.Runtime.Remoting.Messaging.OneWayAttribute a)))
