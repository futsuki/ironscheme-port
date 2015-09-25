(library (system security cryptography rfc2898-derive-bytes)
  (export new
          is?
          rfc2898-derive-bytes?
          get-bytes
          reset
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
             System.Security.Cryptography.Rfc2898DeriveBytes
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.Cryptography.Rfc2898DeriveBytes a))
  (define (rfc2898-derive-bytes? a)
    (clr-is System.Security.Cryptography.Rfc2898DeriveBytes a))
  (define-method-port
    get-bytes
    System.Security.Cryptography.Rfc2898DeriveBytes
    GetBytes
    (System.Byte[] System.Int32))
  (define-method-port
    reset
    System.Security.Cryptography.Rfc2898DeriveBytes
    Reset
    (System.Void))
  (define-field-port
    iteration-count-get
    iteration-count-set!
    iteration-count-update!
    (property:)
    System.Security.Cryptography.Rfc2898DeriveBytes
    IterationCount
    System.Int32)
  (define-field-port
    salt-get
    salt-set!
    salt-update!
    (property:)
    System.Security.Cryptography.Rfc2898DeriveBytes
    Salt
    System.Byte[]))
