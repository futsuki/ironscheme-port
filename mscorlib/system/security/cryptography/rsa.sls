(library (system security cryptography rsa)
  (export is?
          rsa?
          from-xml-string
          to-xml-string
          create
          import-parameters
          encrypt-value
          decrypt-value
          export-parameters)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Security.Cryptography.RSA a))
  (define (rsa? a) (clr-is System.Security.Cryptography.RSA a))
  (define-method-port
    from-xml-string
    System.Security.Cryptography.RSA
    FromXmlString
    (System.Void System.String))
  (define-method-port
    to-xml-string
    System.Security.Cryptography.RSA
    ToXmlString
    (System.String System.Boolean))
  (define-method-port
    create
    System.Security.Cryptography.RSA
    Create
    (static: System.Security.Cryptography.RSA System.String)
    (static: System.Security.Cryptography.RSA))
  (define-method-port
    import-parameters
    System.Security.Cryptography.RSA
    ImportParameters
    (System.Void System.Security.Cryptography.RSAParameters))
  (define-method-port
    encrypt-value
    System.Security.Cryptography.RSA
    EncryptValue
    (System.Byte[] System.Byte[]))
  (define-method-port
    decrypt-value
    System.Security.Cryptography.RSA
    DecryptValue
    (System.Byte[] System.Byte[]))
  (define-method-port
    export-parameters
    System.Security.Cryptography.RSA
    ExportParameters
    (System.Security.Cryptography.RSAParameters System.Boolean)))
