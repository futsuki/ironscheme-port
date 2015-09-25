(library (mono security x509 x509-crl)
  (export new
          is?
          x509-crl?
          verify-signature?
          create-from-file
          get-bytes
          was-current?
          get-crl-entry
          entries
          item
          item
          extensions
          hash
          issuer-name
          next-update
          this-update
          signature-algorithm
          signature
          raw-data
          version
          is-current?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Security.X509.X509Crl a ...)))))
  (define (is? a) (clr-is Mono.Security.X509.X509Crl a))
  (define (x509-crl? a) (clr-is Mono.Security.X509.X509Crl a))
  (define-method-port
    verify-signature?
    Mono.Security.X509.X509Crl
    VerifySignature
    (System.Boolean System.Security.Cryptography.AsymmetricAlgorithm)
    (System.Boolean Mono.Security.X509.X509Certificate))
  (define-method-port
    create-from-file
    Mono.Security.X509.X509Crl
    CreateFromFile
    (static: Mono.Security.X509.X509Crl System.String))
  (define-method-port
    get-bytes
    Mono.Security.X509.X509Crl
    GetBytes
    (System.Byte[]))
  (define-method-port
    was-current?
    Mono.Security.X509.X509Crl
    WasCurrent
    (System.Boolean System.DateTime))
  (define-method-port
    get-crl-entry
    Mono.Security.X509.X509Crl
    GetCrlEntry
    (Mono.Security.X509.X509Crl+X509CrlEntry System.Byte[])
    (Mono.Security.X509.X509Crl+X509CrlEntry
      Mono.Security.X509.X509Certificate))
  (define-field-port
    entries
    #f
    #f
    (property:)
    Mono.Security.X509.X509Crl
    Entries
    System.Collections.ArrayList)
  (define-field-port
    item
    #f
    #f
    (property:)
    Mono.Security.X509.X509Crl
    Item
    Mono.Security.X509.X509Crl+X509CrlEntry)
  (define-field-port
    item
    #f
    #f
    (property:)
    Mono.Security.X509.X509Crl
    Item
    Mono.Security.X509.X509Crl+X509CrlEntry)
  (define-field-port
    extensions
    #f
    #f
    (property:)
    Mono.Security.X509.X509Crl
    Extensions
    Mono.Security.X509.X509ExtensionCollection)
  (define-field-port
    hash
    #f
    #f
    (property:)
    Mono.Security.X509.X509Crl
    Hash
    System.Byte[])
  (define-field-port
    issuer-name
    #f
    #f
    (property:)
    Mono.Security.X509.X509Crl
    IssuerName
    System.String)
  (define-field-port
    next-update
    #f
    #f
    (property:)
    Mono.Security.X509.X509Crl
    NextUpdate
    System.DateTime)
  (define-field-port
    this-update
    #f
    #f
    (property:)
    Mono.Security.X509.X509Crl
    ThisUpdate
    System.DateTime)
  (define-field-port
    signature-algorithm
    #f
    #f
    (property:)
    Mono.Security.X509.X509Crl
    SignatureAlgorithm
    System.String)
  (define-field-port
    signature
    #f
    #f
    (property:)
    Mono.Security.X509.X509Crl
    Signature
    System.Byte[])
  (define-field-port
    raw-data
    #f
    #f
    (property:)
    Mono.Security.X509.X509Crl
    RawData
    System.Byte[])
  (define-field-port
    version
    #f
    #f
    (property:)
    Mono.Security.X509.X509Crl
    Version
    System.Byte)
  (define-field-port
    is-current?
    #f
    #f
    (property:)
    Mono.Security.X509.X509Crl
    IsCurrent
    System.Boolean))
