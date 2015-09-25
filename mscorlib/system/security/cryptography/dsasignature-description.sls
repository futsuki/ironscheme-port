(library (system security cryptography dsasignature-description)
  (export new is? dsasignature-description?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Cryptography.DSASignatureDescription
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.Cryptography.DSASignatureDescription a))
  (define (dsasignature-description? a)
    (clr-is System.Security.Cryptography.DSASignatureDescription a)))
