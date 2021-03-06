(library (system security cryptography csp-key-container-info)
  (export new
          is?
          csp-key-container-info?
          accessible?
          crypto-key-security
          exportable?
          hardware-device?
          key-container-name
          key-number
          machine-key-store?
          protected?
          provider-name
          provider-type
          randomly-generated?
          removable?
          unique-key-container-name)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Cryptography.CspKeyContainerInfo
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.Cryptography.CspKeyContainerInfo a))
  (define (csp-key-container-info? a)
    (clr-is System.Security.Cryptography.CspKeyContainerInfo a))
  (define-field-port
    accessible?
    #f
    #f
    (property:)
    System.Security.Cryptography.CspKeyContainerInfo
    Accessible
    System.Boolean)
  (define-field-port
    crypto-key-security
    #f
    #f
    (property:)
    System.Security.Cryptography.CspKeyContainerInfo
    CryptoKeySecurity
    System.Security.AccessControl.CryptoKeySecurity)
  (define-field-port
    exportable?
    #f
    #f
    (property:)
    System.Security.Cryptography.CspKeyContainerInfo
    Exportable
    System.Boolean)
  (define-field-port
    hardware-device?
    #f
    #f
    (property:)
    System.Security.Cryptography.CspKeyContainerInfo
    HardwareDevice
    System.Boolean)
  (define-field-port
    key-container-name
    #f
    #f
    (property:)
    System.Security.Cryptography.CspKeyContainerInfo
    KeyContainerName
    System.String)
  (define-field-port
    key-number
    #f
    #f
    (property:)
    System.Security.Cryptography.CspKeyContainerInfo
    KeyNumber
    System.Security.Cryptography.KeyNumber)
  (define-field-port
    machine-key-store?
    #f
    #f
    (property:)
    System.Security.Cryptography.CspKeyContainerInfo
    MachineKeyStore
    System.Boolean)
  (define-field-port
    protected?
    #f
    #f
    (property:)
    System.Security.Cryptography.CspKeyContainerInfo
    Protected
    System.Boolean)
  (define-field-port
    provider-name
    #f
    #f
    (property:)
    System.Security.Cryptography.CspKeyContainerInfo
    ProviderName
    System.String)
  (define-field-port
    provider-type
    #f
    #f
    (property:)
    System.Security.Cryptography.CspKeyContainerInfo
    ProviderType
    System.Int32)
  (define-field-port
    randomly-generated?
    #f
    #f
    (property:)
    System.Security.Cryptography.CspKeyContainerInfo
    RandomlyGenerated
    System.Boolean)
  (define-field-port
    removable?
    #f
    #f
    (property:)
    System.Security.Cryptography.CspKeyContainerInfo
    Removable
    System.Boolean)
  (define-field-port
    unique-key-container-name
    #f
    #f
    (property:)
    System.Security.Cryptography.CspKeyContainerInfo
    UniqueKeyContainerName
    System.String))
