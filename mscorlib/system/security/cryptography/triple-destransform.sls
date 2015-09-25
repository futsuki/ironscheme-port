(library (system security cryptography triple-destransform)
  (export new is? triple-destransform?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Cryptography.TripleDESTransform
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.Cryptography.TripleDESTransform a))
  (define (triple-destransform? a)
    (clr-is System.Security.Cryptography.TripleDESTransform a)))
