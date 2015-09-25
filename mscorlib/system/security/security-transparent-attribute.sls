(library (system security security-transparent-attribute)
  (export new is? security-transparent-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.SecurityTransparentAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.SecurityTransparentAttribute a))
  (define (security-transparent-attribute? a)
    (clr-is System.Security.SecurityTransparentAttribute a)))
