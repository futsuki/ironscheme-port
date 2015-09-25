(library (system
          security
          cryptography
          x509-certificates
          x509-extension-collection)
  (export new
          is?
          x509-extension-collection?
          get-enumerator
          add
          copy-to
          count
          is-synchronized?
          sync-root
          item
          item)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Cryptography.X509Certificates.X509ExtensionCollection
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Security.Cryptography.X509Certificates.X509ExtensionCollection
      a))
  (define (x509-extension-collection? a)
    (clr-is
      System.Security.Cryptography.X509Certificates.X509ExtensionCollection
      a))
  (define-method-port
    get-enumerator
    System.Security.Cryptography.X509Certificates.X509ExtensionCollection
    GetEnumerator
    (System.Security.Cryptography.X509Certificates.X509ExtensionEnumerator))
  (define-method-port
    add
    System.Security.Cryptography.X509Certificates.X509ExtensionCollection
    Add
    (System.Int32
      System.Security.Cryptography.X509Certificates.X509Extension))
  (define-method-port
    copy-to
    System.Security.Cryptography.X509Certificates.X509ExtensionCollection
    CopyTo
    (System.Void
      System.Security.Cryptography.X509Certificates.X509Extension[]
      System.Int32))
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Security.Cryptography.X509Certificates.X509ExtensionCollection
    Count
    System.Int32)
  (define-field-port
    is-synchronized?
    #f
    #f
    (property:)
    System.Security.Cryptography.X509Certificates.X509ExtensionCollection
    IsSynchronized
    System.Boolean)
  (define-field-port
    sync-root
    #f
    #f
    (property:)
    System.Security.Cryptography.X509Certificates.X509ExtensionCollection
    SyncRoot
    System.Object)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Security.Cryptography.X509Certificates.X509ExtensionCollection
    Item
    System.Security.Cryptography.X509Certificates.X509Extension)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Security.Cryptography.X509Certificates.X509ExtensionCollection
    Item
    System.Security.Cryptography.X509Certificates.X509Extension))
