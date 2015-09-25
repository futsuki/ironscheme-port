(library (system security cryptography sha512-managed)
  (export new is? sha512-managed? initialize)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Cryptography.SHA512Managed
             a
             ...)))))
  (define (is? a) (clr-is System.Security.Cryptography.SHA512Managed a))
  (define (sha512-managed? a)
    (clr-is System.Security.Cryptography.SHA512Managed a))
  (define-method-port
    initialize
    System.Security.Cryptography.SHA512Managed
    Initialize
    (System.Void)))
