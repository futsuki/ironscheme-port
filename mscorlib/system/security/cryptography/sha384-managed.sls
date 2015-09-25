(library (system security cryptography sha384-managed)
  (export new is? sha384-managed? initialize)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Cryptography.SHA384Managed
             a
             ...)))))
  (define (is? a) (clr-is System.Security.Cryptography.SHA384Managed a))
  (define (sha384-managed? a)
    (clr-is System.Security.Cryptography.SHA384Managed a))
  (define-method-port
    initialize
    System.Security.Cryptography.SHA384Managed
    Initialize
    (System.Void)))
