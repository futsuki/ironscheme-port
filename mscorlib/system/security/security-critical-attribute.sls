(library (system security security-critical-attribute)
  (export new is? security-critical-attribute? scope)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Security.SecurityCriticalAttribute a ...)))))
  (define (is? a) (clr-is System.Security.SecurityCriticalAttribute a))
  (define (security-critical-attribute? a)
    (clr-is System.Security.SecurityCriticalAttribute a))
  (define-field-port
    scope
    #f
    #f
    (property:)
    System.Security.SecurityCriticalAttribute
    Scope
    System.Security.SecurityCriticalScope))
