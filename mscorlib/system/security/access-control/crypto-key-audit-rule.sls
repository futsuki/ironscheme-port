(library (system security access-control crypto-key-audit-rule)
  (export new is? crypto-key-audit-rule? crypto-key-rights)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.AccessControl.CryptoKeyAuditRule
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.AccessControl.CryptoKeyAuditRule a))
  (define (crypto-key-audit-rule? a)
    (clr-is System.Security.AccessControl.CryptoKeyAuditRule a))
  (define-field-port
    crypto-key-rights
    #f
    #f
    (property:)
    System.Security.AccessControl.CryptoKeyAuditRule
    CryptoKeyRights
    System.Security.AccessControl.CryptoKeyRights))
