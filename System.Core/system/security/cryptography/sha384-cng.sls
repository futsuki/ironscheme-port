(library (system security cryptography sha384-cng)
  (export new is? sha384-cng? initialize)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Security.Cryptography.SHA384Cng a ...)))))
  (define (is? a) (clr-is System.Security.Cryptography.SHA384Cng a))
  (define (sha384-cng? a)
    (clr-is System.Security.Cryptography.SHA384Cng a))
  (define-method-port
    initialize
    System.Security.Cryptography.SHA384Cng
    Initialize
    (System.Void)))
