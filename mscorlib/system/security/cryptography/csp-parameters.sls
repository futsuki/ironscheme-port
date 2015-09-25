(library (system security cryptography csp-parameters)
  (export new
          is?
          csp-parameters?
          key-container-name-get
          key-container-name-set!
          key-container-name-update!
          key-number-get
          key-number-set!
          key-number-update!
          provider-name-get
          provider-name-set!
          provider-name-update!
          provider-type-get
          provider-type-set!
          provider-type-update!
          flags-get
          flags-set!
          flags-update!
          crypto-key-security-get
          crypto-key-security-set!
          crypto-key-security-update!
          key-password-get
          key-password-set!
          key-password-update!
          parent-window-handle-get
          parent-window-handle-set!
          parent-window-handle-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Cryptography.CspParameters
             a
             ...)))))
  (define (is? a) (clr-is System.Security.Cryptography.CspParameters a))
  (define (csp-parameters? a)
    (clr-is System.Security.Cryptography.CspParameters a))
  (define-field-port
    key-container-name-get
    key-container-name-set!
    key-container-name-update!
    ()
    System.Security.Cryptography.CspParameters
    KeyContainerName
    System.String)
  (define-field-port
    key-number-get
    key-number-set!
    key-number-update!
    ()
    System.Security.Cryptography.CspParameters
    KeyNumber
    System.Int32)
  (define-field-port
    provider-name-get
    provider-name-set!
    provider-name-update!
    ()
    System.Security.Cryptography.CspParameters
    ProviderName
    System.String)
  (define-field-port
    provider-type-get
    provider-type-set!
    provider-type-update!
    ()
    System.Security.Cryptography.CspParameters
    ProviderType
    System.Int32)
  (define-field-port
    flags-get
    flags-set!
    flags-update!
    (property:)
    System.Security.Cryptography.CspParameters
    Flags
    System.Security.Cryptography.CspProviderFlags)
  (define-field-port
    crypto-key-security-get
    crypto-key-security-set!
    crypto-key-security-update!
    (property:)
    System.Security.Cryptography.CspParameters
    CryptoKeySecurity
    System.Security.AccessControl.CryptoKeySecurity)
  (define-field-port
    key-password-get
    key-password-set!
    key-password-update!
    (property:)
    System.Security.Cryptography.CspParameters
    KeyPassword
    System.Security.SecureString)
  (define-field-port
    parent-window-handle-get
    parent-window-handle-set!
    parent-window-handle-update!
    (property:)
    System.Security.Cryptography.CspParameters
    ParentWindowHandle
    System.IntPtr))
