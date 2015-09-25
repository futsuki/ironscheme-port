(library (system
          security
          cryptography
          cryptographic-unexpected-operation-exception)
  (export new is? cryptographic-unexpected-operation-exception?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Cryptography.CryptographicUnexpectedOperationException
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Security.Cryptography.CryptographicUnexpectedOperationException
      a))
  (define (cryptographic-unexpected-operation-exception? a)
    (clr-is
      System.Security.Cryptography.CryptographicUnexpectedOperationException
      a)))
