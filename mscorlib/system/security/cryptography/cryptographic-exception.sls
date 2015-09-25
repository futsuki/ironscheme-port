(library (system security cryptography cryptographic-exception)
  (export new is? cryptographic-exception?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Cryptography.CryptographicException
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.Cryptography.CryptographicException a))
  (define (cryptographic-exception? a)
    (clr-is System.Security.Cryptography.CryptographicException a)))
