(library (system configuration dpapi-protected-configuration-provider)
  (export new
          is?
          dpapi-protected-configuration-provider?
          initialize
          encrypt
          decrypt
          use-machine-protection?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.DpapiProtectedConfigurationProvider
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.DpapiProtectedConfigurationProvider a))
  (define (dpapi-protected-configuration-provider? a)
    (clr-is System.Configuration.DpapiProtectedConfigurationProvider a))
  (define-method-port
    initialize
    System.Configuration.DpapiProtectedConfigurationProvider
    Initialize
    (System.Void
      System.String
      System.Collections.Specialized.NameValueCollection))
  (define-method-port
    encrypt
    System.Configuration.DpapiProtectedConfigurationProvider
    Encrypt
    (System.Xml.XmlNode System.Xml.XmlNode))
  (define-method-port
    decrypt
    System.Configuration.DpapiProtectedConfigurationProvider
    Decrypt
    (System.Xml.XmlNode System.Xml.XmlNode))
  (define-field-port
    use-machine-protection?
    #f
    #f
    (property:)
    System.Configuration.DpapiProtectedConfigurationProvider
    UseMachineProtection
    System.Boolean))
