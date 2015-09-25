(library (system
          security
          cryptography
          x509-certificates
          x509-extension-enumerator)
  (export is? x509-extension-enumerator? reset move-next? current)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is
      System.Security.Cryptography.X509Certificates.X509ExtensionEnumerator
      a))
  (define (x509-extension-enumerator? a)
    (clr-is
      System.Security.Cryptography.X509Certificates.X509ExtensionEnumerator
      a))
  (define-method-port
    reset
    System.Security.Cryptography.X509Certificates.X509ExtensionEnumerator
    Reset
    (System.Void))
  (define-method-port
    move-next?
    System.Security.Cryptography.X509Certificates.X509ExtensionEnumerator
    MoveNext
    (System.Boolean))
  (define-field-port
    current
    #f
    #f
    (property:)
    System.Security.Cryptography.X509Certificates.X509ExtensionEnumerator
    Current
    System.Security.Cryptography.X509Certificates.X509Extension))
