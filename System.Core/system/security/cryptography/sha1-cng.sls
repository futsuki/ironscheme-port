(library (system security cryptography sha1-cng)
  (export new is? sha1-cng? initialize)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Security.Cryptography.SHA1Cng a ...)))))
  (define (is? a) (clr-is System.Security.Cryptography.SHA1Cng a))
  (define (sha1-cng? a) (clr-is System.Security.Cryptography.SHA1Cng a))
  (define-method-port
    initialize
    System.Security.Cryptography.SHA1Cng
    Initialize
    (System.Void)))
