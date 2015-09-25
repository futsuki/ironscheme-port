(library (mono security x509 x509-certificate-collection)
  (export new
          is?
          x509-certificate-collection?
          get-hash-code
          insert
          add-range
          index-of
          get-enumerator
          add
          contains?
          remove
          copy-to
          item-get
          item-set!
          item-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             Mono.Security.X509.X509CertificateCollection
             a
             ...)))))
  (define (is? a)
    (clr-is Mono.Security.X509.X509CertificateCollection a))
  (define (x509-certificate-collection? a)
    (clr-is Mono.Security.X509.X509CertificateCollection a))
  (define-method-port
    get-hash-code
    Mono.Security.X509.X509CertificateCollection
    GetHashCode
    (System.Int32))
  (define-method-port
    insert
    Mono.Security.X509.X509CertificateCollection
    Insert
    (System.Void System.Int32 Mono.Security.X509.X509Certificate))
  (define-method-port
    add-range
    Mono.Security.X509.X509CertificateCollection
    AddRange
    (System.Void Mono.Security.X509.X509CertificateCollection)
    (System.Void Mono.Security.X509.X509Certificate[]))
  (define-method-port
    index-of
    Mono.Security.X509.X509CertificateCollection
    IndexOf
    (System.Int32 Mono.Security.X509.X509Certificate))
  (define-method-port
    get-enumerator
    Mono.Security.X509.X509CertificateCollection
    GetEnumerator
    (Mono.Security.X509.X509CertificateCollection+X509CertificateEnumerator))
  (define-method-port
    add
    Mono.Security.X509.X509CertificateCollection
    Add
    (System.Int32 Mono.Security.X509.X509Certificate))
  (define-method-port
    contains?
    Mono.Security.X509.X509CertificateCollection
    Contains
    (System.Boolean Mono.Security.X509.X509Certificate))
  (define-method-port
    remove
    Mono.Security.X509.X509CertificateCollection
    Remove
    (System.Void Mono.Security.X509.X509Certificate))
  (define-method-port
    copy-to
    Mono.Security.X509.X509CertificateCollection
    CopyTo
    (System.Void Mono.Security.X509.X509Certificate[] System.Int32))
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    Mono.Security.X509.X509CertificateCollection
    Item
    Mono.Security.X509.X509Certificate))
