(library (system security access-control crypto-key-access-rule)
  (export new is? crypto-key-access-rule? crypto-key-rights)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.AccessControl.CryptoKeyAccessRule
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.AccessControl.CryptoKeyAccessRule a))
  (define (crypto-key-access-rule? a)
    (clr-is System.Security.AccessControl.CryptoKeyAccessRule a))
  (define-field-port
    crypto-key-rights
    #f
    #f
    (property:)
    System.Security.AccessControl.CryptoKeyAccessRule
    CryptoKeyRights
    System.Security.AccessControl.CryptoKeyRights))
