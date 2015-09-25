(library (system security cryptography ripemd160-managed)
  (export new is? ripemd160-managed? initialize)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Cryptography.RIPEMD160Managed
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.Cryptography.RIPEMD160Managed a))
  (define (ripemd160-managed? a)
    (clr-is System.Security.Cryptography.RIPEMD160Managed a))
  (define-method-port
    initialize
    System.Security.Cryptography.RIPEMD160Managed
    Initialize
    (System.Void)))
