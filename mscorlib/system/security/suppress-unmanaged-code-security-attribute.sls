(library (system security suppress-unmanaged-code-security-attribute)
  (export new is? suppress-unmanaged-code-security-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.SuppressUnmanagedCodeSecurityAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.SuppressUnmanagedCodeSecurityAttribute a))
  (define (suppress-unmanaged-code-security-attribute? a)
    (clr-is System.Security.SuppressUnmanagedCodeSecurityAttribute a)))
