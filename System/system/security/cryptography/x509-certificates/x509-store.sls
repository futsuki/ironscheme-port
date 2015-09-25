(library (system security cryptography x509-certificates x509-store)
  (export new
          is?
          x509-store?
          add-range
          remove-range
          open
          add
          remove
          close
          certificates
          location
          name
          store-handle)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Cryptography.X509Certificates.X509Store
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.Cryptography.X509Certificates.X509Store a))
  (define (x509-store? a)
    (clr-is System.Security.Cryptography.X509Certificates.X509Store a))
  (define-method-port
    add-range
    System.Security.Cryptography.X509Certificates.X509Store
    AddRange
    (System.Void
      System.Security.Cryptography.X509Certificates.X509Certificate2Collection))
  (define-method-port
    remove-range
    System.Security.Cryptography.X509Certificates.X509Store
    RemoveRange
    (System.Void
      System.Security.Cryptography.X509Certificates.X509Certificate2Collection))
  (define-method-port
    open
    System.Security.Cryptography.X509Certificates.X509Store
    Open
    (System.Void
      System.Security.Cryptography.X509Certificates.OpenFlags))
  (define-method-port
    add
    System.Security.Cryptography.X509Certificates.X509Store
    Add
    (System.Void
      System.Security.Cryptography.X509Certificates.X509Certificate2))
  (define-method-port
    remove
    System.Security.Cryptography.X509Certificates.X509Store
    Remove
    (System.Void
      System.Security.Cryptography.X509Certificates.X509Certificate2))
  (define-method-port
    close
    System.Security.Cryptography.X509Certificates.X509Store
    Close
    (System.Void))
  (define-field-port
    certificates
    #f
    #f
    (property:)
    System.Security.Cryptography.X509Certificates.X509Store
    Certificates
    System.Security.Cryptography.X509Certificates.X509Certificate2Collection)
  (define-field-port
    location
    #f
    #f
    (property:)
    System.Security.Cryptography.X509Certificates.X509Store
    Location
    System.Security.Cryptography.X509Certificates.StoreLocation)
  (define-field-port
    name
    #f
    #f
    (property:)
    System.Security.Cryptography.X509Certificates.X509Store
    Name
    System.String)
  (define-field-port
    store-handle
    #f
    #f
    (property:)
    System.Security.Cryptography.X509Certificates.X509Store
    StoreHandle
    System.IntPtr))
