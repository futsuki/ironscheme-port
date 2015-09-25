(library (system net network-information ping-exception)
  (export new is? ping-exception?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Net.NetworkInformation.PingException
             a
             ...)))))
  (define (is? a)
    (clr-is System.Net.NetworkInformation.PingException a))
  (define (ping-exception? a)
    (clr-is System.Net.NetworkInformation.PingException a)))
