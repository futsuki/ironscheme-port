(library (system security cryptography oid)
  (export new
          is?
          oid?
          friendly-name-get
          friendly-name-set!
          friendly-name-update!
          value-get
          value-set!
          value-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Security.Cryptography.Oid a ...)))))
  (define (is? a) (clr-is System.Security.Cryptography.Oid a))
  (define (oid? a) (clr-is System.Security.Cryptography.Oid a))
  (define-field-port
    friendly-name-get
    friendly-name-set!
    friendly-name-update!
    (property:)
    System.Security.Cryptography.Oid
    FriendlyName
    System.String)
  (define-field-port
    value-get
    value-set!
    value-update!
    (property:)
    System.Security.Cryptography.Oid
    Value
    System.String))
