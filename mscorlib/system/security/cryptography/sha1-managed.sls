(library (system security cryptography sha1-managed)
  (export new is? sha1-managed? initialize)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Security.Cryptography.SHA1Managed a ...)))))
  (define (is? a) (clr-is System.Security.Cryptography.SHA1Managed a))
  (define (sha1-managed? a)
    (clr-is System.Security.Cryptography.SHA1Managed a))
  (define-method-port
    initialize
    System.Security.Cryptography.SHA1Managed
    Initialize
    (System.Void)))
