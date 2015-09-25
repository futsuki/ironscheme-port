(library (system security cryptography md5-cng)
  (export new is? md5-cng? initialize)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Security.Cryptography.MD5Cng a ...)))))
  (define (is? a) (clr-is System.Security.Cryptography.MD5Cng a))
  (define (md5-cng? a) (clr-is System.Security.Cryptography.MD5Cng a))
  (define-method-port
    initialize
    System.Security.Cryptography.MD5Cng
    Initialize
    (System.Void)))
