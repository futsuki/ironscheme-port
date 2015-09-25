(library (system security cryptography hmacripemd160)
  (export new is? hmacripemd160?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Cryptography.HMACRIPEMD160
             a
             ...)))))
  (define (is? a) (clr-is System.Security.Cryptography.HMACRIPEMD160 a))
  (define (hmacripemd160? a)
    (clr-is System.Security.Cryptography.HMACRIPEMD160 a)))
