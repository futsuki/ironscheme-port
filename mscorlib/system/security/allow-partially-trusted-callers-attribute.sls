(library (system security allow-partially-trusted-callers-attribute)
  (export new is? allow-partially-trusted-callers-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.AllowPartiallyTrustedCallersAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.AllowPartiallyTrustedCallersAttribute a))
  (define (allow-partially-trusted-callers-attribute? a)
    (clr-is System.Security.AllowPartiallyTrustedCallersAttribute a)))
