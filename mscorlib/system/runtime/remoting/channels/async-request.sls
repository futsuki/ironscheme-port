(library (system runtime remoting channels async-request)
  (export new is? async-request?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Remoting.Channels.AsyncRequest
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Remoting.Channels.AsyncRequest a))
  (define (async-request? a)
    (clr-is System.Runtime.Remoting.Channels.AsyncRequest a)))
