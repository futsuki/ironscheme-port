(library (system security cryptography rijndael-managed)
  (export new
          is?
          rijndael-managed?
          create-decryptor
          create-encryptor
          generate-iv
          generate-key)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Cryptography.RijndaelManaged
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.Cryptography.RijndaelManaged a))
  (define (rijndael-managed? a)
    (clr-is System.Security.Cryptography.RijndaelManaged a))
  (define-method-port
    create-decryptor
    System.Security.Cryptography.RijndaelManaged
    CreateDecryptor
    (System.Security.Cryptography.ICryptoTransform
      System.Byte[]
      System.Byte[]))
  (define-method-port
    create-encryptor
    System.Security.Cryptography.RijndaelManaged
    CreateEncryptor
    (System.Security.Cryptography.ICryptoTransform
      System.Byte[]
      System.Byte[]))
  (define-method-port
    generate-iv
    System.Security.Cryptography.RijndaelManaged
    GenerateIV
    (System.Void))
  (define-method-port
    generate-key
    System.Security.Cryptography.RijndaelManaged
    GenerateKey
    (System.Void)))
