(library (system security policy application-trust-collection)
  (export is?
          application-trust-collection?
          copy-to
          find
          add-range
          remove-range
          get-enumerator
          add
          remove
          clear
          count
          is-synchronized?
          sync-root
          item
          item)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Security.Policy.ApplicationTrustCollection a))
  (define (application-trust-collection? a)
    (clr-is System.Security.Policy.ApplicationTrustCollection a))
  (define-method-port
    copy-to
    System.Security.Policy.ApplicationTrustCollection
    CopyTo
    (System.Void
      System.Security.Policy.ApplicationTrust[]
      System.Int32))
  (define-method-port
    find
    System.Security.Policy.ApplicationTrustCollection
    Find
    (System.Security.Policy.ApplicationTrustCollection
      System.ApplicationIdentity
      System.Security.Policy.ApplicationVersionMatch))
  (define-method-port
    add-range
    System.Security.Policy.ApplicationTrustCollection
    AddRange
    (System.Void System.Security.Policy.ApplicationTrustCollection)
    (System.Void System.Security.Policy.ApplicationTrust[]))
  (define-method-port
    remove-range
    System.Security.Policy.ApplicationTrustCollection
    RemoveRange
    (System.Void System.Security.Policy.ApplicationTrustCollection)
    (System.Void System.Security.Policy.ApplicationTrust[]))
  (define-method-port
    get-enumerator
    System.Security.Policy.ApplicationTrustCollection
    GetEnumerator
    (System.Security.Policy.ApplicationTrustEnumerator))
  (define-method-port
    add
    System.Security.Policy.ApplicationTrustCollection
    Add
    (System.Int32 System.Security.Policy.ApplicationTrust))
  (define-method-port
    remove
    System.Security.Policy.ApplicationTrustCollection
    Remove
    (System.Void
      System.ApplicationIdentity
      System.Security.Policy.ApplicationVersionMatch)
    (System.Void System.Security.Policy.ApplicationTrust))
  (define-method-port
    clear
    System.Security.Policy.ApplicationTrustCollection
    Clear
    (System.Void))
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Security.Policy.ApplicationTrustCollection
    Count
    System.Int32)
  (define-field-port
    is-synchronized?
    #f
    #f
    (property:)
    System.Security.Policy.ApplicationTrustCollection
    IsSynchronized
    System.Boolean)
  (define-field-port
    sync-root
    #f
    #f
    (property:)
    System.Security.Policy.ApplicationTrustCollection
    SyncRoot
    System.Object)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Security.Policy.ApplicationTrustCollection
    Item
    System.Security.Policy.ApplicationTrust)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Security.Policy.ApplicationTrustCollection
    Item
    System.Security.Policy.ApplicationTrust))
