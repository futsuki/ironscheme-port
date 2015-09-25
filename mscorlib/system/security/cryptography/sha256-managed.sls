(library (system security cryptography sha256-managed)
  (export new is? sha256-managed? initialize)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Cryptography.SHA256Managed
             a
             ...)))))
  (define (is? a) (clr-is System.Security.Cryptography.SHA256Managed a))
  (define (sha256-managed? a)
    (clr-is System.Security.Cryptography.SHA256Managed a))
  (define-method-port
    initialize
    System.Security.Cryptography.SHA256Managed
    Initialize
    (System.Void)))
