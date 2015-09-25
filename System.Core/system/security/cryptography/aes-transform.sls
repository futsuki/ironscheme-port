(library (system security cryptography aes-transform)
  (export new is? aes-transform? clear)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Security.Cryptography.AesTransform a ...)))))
  (define (is? a) (clr-is System.Security.Cryptography.AesTransform a))
  (define (aes-transform? a)
    (clr-is System.Security.Cryptography.AesTransform a))
  (define-method-port
    clear
    System.Security.Cryptography.AesTransform
    Clear
    (System.Void)))
