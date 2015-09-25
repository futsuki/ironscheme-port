(library (system security cryptography rijndael-transform)
  (export new is? rijndael-transform? clear)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Cryptography.RijndaelTransform
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.Cryptography.RijndaelTransform a))
  (define (rijndael-transform? a)
    (clr-is System.Security.Cryptography.RijndaelTransform a))
  (define-method-port
    clear
    System.Security.Cryptography.RijndaelTransform
    Clear
    (System.Void)))
