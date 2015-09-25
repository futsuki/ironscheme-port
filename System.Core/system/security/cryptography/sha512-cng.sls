(library (system security cryptography sha512-cng)
  (export new is? sha512-cng? initialize)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Security.Cryptography.SHA512Cng a ...)))))
  (define (is? a) (clr-is System.Security.Cryptography.SHA512Cng a))
  (define (sha512-cng? a)
    (clr-is System.Security.Cryptography.SHA512Cng a))
  (define-method-port
    initialize
    System.Security.Cryptography.SHA512Cng
    Initialize
    (System.Void)))
