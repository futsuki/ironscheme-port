(library (system security cryptography password-derive-bytes)
  (export new
          is?
          password-derive-bytes?
          get-bytes
          crypt-derive-key
          reset
          hash-name-get
          hash-name-set!
          hash-name-update!
          iteration-count-get
          iteration-count-set!
          iteration-count-update!
          salt-get
          salt-set!
          salt-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Cryptography.PasswordDeriveBytes
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.Cryptography.PasswordDeriveBytes a))
  (define (password-derive-bytes? a)
    (clr-is System.Security.Cryptography.PasswordDeriveBytes a))
  (define-method-port
    get-bytes
    System.Security.Cryptography.PasswordDeriveBytes
    GetBytes
    (System.Byte[] System.Int32))
  (define-method-port
    crypt-derive-key
    System.Security.Cryptography.PasswordDeriveBytes
    CryptDeriveKey
    (System.Byte[]
      System.String
      System.String
      System.Int32
      System.Byte[]))
  (define-method-port
    reset
    System.Security.Cryptography.PasswordDeriveBytes
    Reset
    (System.Void))
  (define-field-port
    hash-name-get
    hash-name-set!
    hash-name-update!
    (property:)
    System.Security.Cryptography.PasswordDeriveBytes
    HashName
    System.String)
  (define-field-port
    iteration-count-get
    iteration-count-set!
    iteration-count-update!
    (property:)
    System.Security.Cryptography.PasswordDeriveBytes
    IterationCount
    System.Int32)
  (define-field-port
    salt-get
    salt-set!
    salt-update!
    (property:)
    System.Security.Cryptography.PasswordDeriveBytes
    Salt
    System.Byte[]))
