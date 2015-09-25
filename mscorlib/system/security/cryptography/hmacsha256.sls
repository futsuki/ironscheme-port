(library (system security cryptography hmacsha256)
  (export new is? hmacsha256?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Security.Cryptography.HMACSHA256 a ...)))))
  (define (is? a) (clr-is System.Security.Cryptography.HMACSHA256 a))
  (define (hmacsha256? a)
    (clr-is System.Security.Cryptography.HMACSHA256 a)))
