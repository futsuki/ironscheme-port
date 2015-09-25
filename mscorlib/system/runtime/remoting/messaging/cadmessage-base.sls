(library (system runtime remoting messaging cadmessage-base)
  (export new is? cadmessage-base?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Remoting.Messaging.CADMessageBase
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Remoting.Messaging.CADMessageBase a))
  (define (cadmessage-base? a)
    (clr-is System.Runtime.Remoting.Messaging.CADMessageBase a)))
