(library (system configuration protected-configuration-provider)
  (export is? protected-configuration-provider? encrypt decrypt)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Configuration.ProtectedConfigurationProvider a))
  (define (protected-configuration-provider? a)
    (clr-is System.Configuration.ProtectedConfigurationProvider a))
  (define-method-port
    encrypt
    System.Configuration.ProtectedConfigurationProvider
    Encrypt
    (System.Xml.XmlNode System.Xml.XmlNode))
  (define-method-port
    decrypt
    System.Configuration.ProtectedConfigurationProvider
    Decrypt
    (System.Xml.XmlNode System.Xml.XmlNode)))
