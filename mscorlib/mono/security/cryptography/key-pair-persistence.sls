(library (mono security cryptography key-pair-persistence)
  (export new
          is?
          key-pair-persistence?
          load?
          save
          remove
          filename
          key-value-get
          key-value-set!
          key-value-update!
          parameters)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             Mono.Security.Cryptography.KeyPairPersistence
             a
             ...)))))
  (define (is? a)
    (clr-is Mono.Security.Cryptography.KeyPairPersistence a))
  (define (key-pair-persistence? a)
    (clr-is Mono.Security.Cryptography.KeyPairPersistence a))
  (define-method-port
    load?
    Mono.Security.Cryptography.KeyPairPersistence
    Load
    (System.Boolean))
  (define-method-port
    save
    Mono.Security.Cryptography.KeyPairPersistence
    Save
    (System.Void))
  (define-method-port
    remove
    Mono.Security.Cryptography.KeyPairPersistence
    Remove
    (System.Void))
  (define-field-port
    filename
    #f
    #f
    (property:)
    Mono.Security.Cryptography.KeyPairPersistence
    Filename
    System.String)
  (define-field-port
    key-value-get
    key-value-set!
    key-value-update!
    (property:)
    Mono.Security.Cryptography.KeyPairPersistence
    KeyValue
    System.String)
  (define-field-port
    parameters
    #f
    #f
    (property:)
    Mono.Security.Cryptography.KeyPairPersistence
    Parameters
    System.Security.Cryptography.CspParameters))
