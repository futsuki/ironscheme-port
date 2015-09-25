(library (system security cryptography x509-certificates x509-chain)
  (export new
          is?
          x509-chain?
          create
          reset
          build?
          chain-context
          chain-elements
          chain-policy-get
          chain-policy-set!
          chain-policy-update!
          chain-status)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Cryptography.X509Certificates.X509Chain
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.Cryptography.X509Certificates.X509Chain a))
  (define (x509-chain? a)
    (clr-is System.Security.Cryptography.X509Certificates.X509Chain a))
  (define-method-port
    create
    System.Security.Cryptography.X509Certificates.X509Chain
    Create
    (static: System.Security.Cryptography.X509Certificates.X509Chain))
  (define-method-port
    reset
    System.Security.Cryptography.X509Certificates.X509Chain
    Reset
    (System.Void))
  (define-method-port
    build?
    System.Security.Cryptography.X509Certificates.X509Chain
    Build
    (System.Boolean
      System.Security.Cryptography.X509Certificates.X509Certificate2))
  (define-field-port
    chain-context
    #f
    #f
    (property:)
    System.Security.Cryptography.X509Certificates.X509Chain
    ChainContext
    System.IntPtr)
  (define-field-port
    chain-elements
    #f
    #f
    (property:)
    System.Security.Cryptography.X509Certificates.X509Chain
    ChainElements
    System.Security.Cryptography.X509Certificates.X509ChainElementCollection)
  (define-field-port
    chain-policy-get
    chain-policy-set!
    chain-policy-update!
    (property:)
    System.Security.Cryptography.X509Certificates.X509Chain
    ChainPolicy
    System.Security.Cryptography.X509Certificates.X509ChainPolicy)
  (define-field-port
    chain-status
    #f
    #f
    (property:)
    System.Security.Cryptography.X509Certificates.X509Chain
    ChainStatus
    System.Security.Cryptography.X509Certificates.X509ChainStatus[]))
