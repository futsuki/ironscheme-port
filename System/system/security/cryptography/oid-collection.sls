(library (system security cryptography oid-collection)
  (export new
          is?
          oid-collection?
          get-enumerator
          add
          copy-to
          count
          is-synchronized?
          item
          item
          sync-root)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Cryptography.OidCollection
             a
             ...)))))
  (define (is? a) (clr-is System.Security.Cryptography.OidCollection a))
  (define (oid-collection? a)
    (clr-is System.Security.Cryptography.OidCollection a))
  (define-method-port
    get-enumerator
    System.Security.Cryptography.OidCollection
    GetEnumerator
    (System.Security.Cryptography.OidEnumerator))
  (define-method-port
    add
    System.Security.Cryptography.OidCollection
    Add
    (System.Int32 System.Security.Cryptography.Oid))
  (define-method-port
    copy-to
    System.Security.Cryptography.OidCollection
    CopyTo
    (System.Void System.Security.Cryptography.Oid[] System.Int32))
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Security.Cryptography.OidCollection
    Count
    System.Int32)
  (define-field-port
    is-synchronized?
    #f
    #f
    (property:)
    System.Security.Cryptography.OidCollection
    IsSynchronized
    System.Boolean)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Security.Cryptography.OidCollection
    Item
    System.Security.Cryptography.Oid)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Security.Cryptography.OidCollection
    Item
    System.Security.Cryptography.Oid)
  (define-field-port
    sync-root
    #f
    #f
    (property:)
    System.Security.Cryptography.OidCollection
    SyncRoot
    System.Object))
