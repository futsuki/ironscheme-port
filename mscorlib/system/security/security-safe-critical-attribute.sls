(library (system security security-safe-critical-attribute)
  (export new is? security-safe-critical-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.SecuritySafeCriticalAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.SecuritySafeCriticalAttribute a))
  (define (security-safe-critical-attribute? a)
    (clr-is System.Security.SecuritySafeCriticalAttribute a)))
