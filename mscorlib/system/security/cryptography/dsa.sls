(library (system security cryptography dsa)
  (export is?
          dsa?
          from-xml-string
          verify-signature?
          create
          import-parameters
          create-signature
          to-xml-string
          export-parameters)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Security.Cryptography.DSA a))
  (define (dsa? a) (clr-is System.Security.Cryptography.DSA a))
  (define-method-port
    from-xml-string
    System.Security.Cryptography.DSA
    FromXmlString
    (System.Void System.String))
  (define-method-port
    verify-signature?
    System.Security.Cryptography.DSA
    VerifySignature
    (System.Boolean System.Byte[] System.Byte[]))
  (define-method-port
    create
    System.Security.Cryptography.DSA
    Create
    (static: System.Security.Cryptography.DSA System.String)
    (static: System.Security.Cryptography.DSA))
  (define-method-port
    import-parameters
    System.Security.Cryptography.DSA
    ImportParameters
    (System.Void System.Security.Cryptography.DSAParameters))
  (define-method-port
    create-signature
    System.Security.Cryptography.DSA
    CreateSignature
    (System.Byte[] System.Byte[]))
  (define-method-port
    to-xml-string
    System.Security.Cryptography.DSA
    ToXmlString
    (System.String System.Boolean))
  (define-method-port
    export-parameters
    System.Security.Cryptography.DSA
    ExportParameters
    (System.Security.Cryptography.DSAParameters System.Boolean)))
