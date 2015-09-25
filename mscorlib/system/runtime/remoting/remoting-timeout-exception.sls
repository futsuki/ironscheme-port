(library (system runtime remoting remoting-timeout-exception)
  (export new is? remoting-timeout-exception?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Remoting.RemotingTimeoutException
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Remoting.RemotingTimeoutException a))
  (define (remoting-timeout-exception? a)
    (clr-is System.Runtime.Remoting.RemotingTimeoutException a)))
