(library (system configuration rsa-protected-configuration-provider)
  (export new
          is?
          rsa-protected-configuration-provider?
          initialize
          add-key
          encrypt
          delete-key
          decrypt
          export-key
          import-key
          csp-provider-name
          key-container-name
          rsa-public-key
          use-machine-container?
          use-oaep?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.RsaProtectedConfigurationProvider
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.RsaProtectedConfigurationProvider a))
  (define (rsa-protected-configuration-provider? a)
    (clr-is System.Configuration.RsaProtectedConfigurationProvider a))
  (define-method-port
    initialize
    System.Configuration.RsaProtectedConfigurationProvider
    Initialize
    (System.Void
      System.String
      System.Collections.Specialized.NameValueCollection))
  (define-method-port
    add-key
    System.Configuration.RsaProtectedConfigurationProvider
    AddKey
    (System.Void System.Int32 System.Boolean))
  (define-method-port
    encrypt
    System.Configuration.RsaProtectedConfigurationProvider
    Encrypt
    (System.Xml.XmlNode System.Xml.XmlNode))
  (define-method-port
    delete-key
    System.Configuration.RsaProtectedConfigurationProvider
    DeleteKey
    (System.Void))
  (define-method-port
    decrypt
    System.Configuration.RsaProtectedConfigurationProvider
    Decrypt
    (System.Xml.XmlNode System.Xml.XmlNode))
  (define-method-port
    export-key
    System.Configuration.RsaProtectedConfigurationProvider
    ExportKey
    (System.Void System.String System.Boolean))
  (define-method-port
    import-key
    System.Configuration.RsaProtectedConfigurationProvider
    ImportKey
    (System.Void System.String System.Boolean))
  (define-field-port
    csp-provider-name
    #f
    #f
    (property:)
    System.Configuration.RsaProtectedConfigurationProvider
    CspProviderName
    System.String)
  (define-field-port
    key-container-name
    #f
    #f
    (property:)
    System.Configuration.RsaProtectedConfigurationProvider
    KeyContainerName
    System.String)
  (define-field-port
    rsa-public-key
    #f
    #f
    (property:)
    System.Configuration.RsaProtectedConfigurationProvider
    RsaPublicKey
    System.Security.Cryptography.RSAParameters)
  (define-field-port
    use-machine-container?
    #f
    #f
    (property:)
    System.Configuration.RsaProtectedConfigurationProvider
    UseMachineContainer
    System.Boolean)
  (define-field-port
    use-oaep?
    #f
    #f
    (property:)
    System.Configuration.RsaProtectedConfigurationProvider
    UseOAEP
    System.Boolean))
