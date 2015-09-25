(library (system security security-treat-as-safe-attribute)
  (export new is? security-treat-as-safe-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.SecurityTreatAsSafeAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.SecurityTreatAsSafeAttribute a))
  (define (security-treat-as-safe-attribute? a)
    (clr-is System.Security.SecurityTreatAsSafeAttribute a)))
