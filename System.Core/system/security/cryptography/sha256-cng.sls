(library (system security cryptography sha256-cng)
  (export new is? sha256-cng? initialize)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Security.Cryptography.SHA256Cng a ...)))))
  (define (is? a) (clr-is System.Security.Cryptography.SHA256Cng a))
  (define (sha256-cng? a)
    (clr-is System.Security.Cryptography.SHA256Cng a))
  (define-method-port
    initialize
    System.Security.Cryptography.SHA256Cng
    Initialize
    (System.Void)))
