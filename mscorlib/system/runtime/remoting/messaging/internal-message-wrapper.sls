(library (system runtime remoting messaging internal-message-wrapper)
  (export new is? internal-message-wrapper?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Remoting.Messaging.InternalMessageWrapper
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Remoting.Messaging.InternalMessageWrapper a))
  (define (internal-message-wrapper? a)
    (clr-is
      System.Runtime.Remoting.Messaging.InternalMessageWrapper
      a)))
