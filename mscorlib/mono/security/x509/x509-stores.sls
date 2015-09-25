(library (mono security x509 x509-stores)
  (export is?
          x509-stores?
          open
          clear
          personal
          other-people
          intermediate-ca
          trusted-root
          untrusted)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is Mono.Security.X509.X509Stores a))
  (define (x509-stores? a) (clr-is Mono.Security.X509.X509Stores a))
  (define-method-port
    open
    Mono.Security.X509.X509Stores
    Open
    (Mono.Security.X509.X509Store System.String System.Boolean))
  (define-method-port
    clear
    Mono.Security.X509.X509Stores
    Clear
    (System.Void))
  (define-field-port
    personal
    #f
    #f
    (property:)
    Mono.Security.X509.X509Stores
    Personal
    Mono.Security.X509.X509Store)
  (define-field-port
    other-people
    #f
    #f
    (property:)
    Mono.Security.X509.X509Stores
    OtherPeople
    Mono.Security.X509.X509Store)
  (define-field-port
    intermediate-ca
    #f
    #f
    (property:)
    Mono.Security.X509.X509Stores
    IntermediateCA
    Mono.Security.X509.X509Store)
  (define-field-port
    trusted-root
    #f
    #f
    (property:)
    Mono.Security.X509.X509Stores
    TrustedRoot
    Mono.Security.X509.X509Store)
  (define-field-port
    untrusted
    #f
    #f
    (property:)
    Mono.Security.X509.X509Stores
    Untrusted
    Mono.Security.X509.X509Store))
