(library (system security cryptography asn-encoded-data-collection)
  (export new
          is?
          asn-encoded-data-collection?
          get-enumerator
          add
          remove
          copy-to
          count
          is-synchronized?
          item
          sync-root)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Cryptography.AsnEncodedDataCollection
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.Cryptography.AsnEncodedDataCollection a))
  (define (asn-encoded-data-collection? a)
    (clr-is System.Security.Cryptography.AsnEncodedDataCollection a))
  (define-method-port
    get-enumerator
    System.Security.Cryptography.AsnEncodedDataCollection
    GetEnumerator
    (System.Security.Cryptography.AsnEncodedDataEnumerator))
  (define-method-port
    add
    System.Security.Cryptography.AsnEncodedDataCollection
    Add
    (System.Int32 System.Security.Cryptography.AsnEncodedData))
  (define-method-port
    remove
    System.Security.Cryptography.AsnEncodedDataCollection
    Remove
    (System.Void System.Security.Cryptography.AsnEncodedData))
  (define-method-port
    copy-to
    System.Security.Cryptography.AsnEncodedDataCollection
    CopyTo
    (System.Void
      System.Security.Cryptography.AsnEncodedData[]
      System.Int32))
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Security.Cryptography.AsnEncodedDataCollection
    Count
    System.Int32)
  (define-field-port
    is-synchronized?
    #f
    #f
    (property:)
    System.Security.Cryptography.AsnEncodedDataCollection
    IsSynchronized
    System.Boolean)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Security.Cryptography.AsnEncodedDataCollection
    Item
    System.Security.Cryptography.AsnEncodedData)
  (define-field-port
    sync-root
    #f
    #f
    (property:)
    System.Security.Cryptography.AsnEncodedDataCollection
    SyncRoot
    System.Object))
