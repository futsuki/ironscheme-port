(library (system data internal-data-collection-base)
  (export new
          is?
          internal-data-collection-base?
          get-enumerator
          copy-to
          count
          is-read-only?
          is-synchronized?
          sync-root)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Data.InternalDataCollectionBase a ...)))))
  (define (is? a) (clr-is System.Data.InternalDataCollectionBase a))
  (define (internal-data-collection-base? a)
    (clr-is System.Data.InternalDataCollectionBase a))
  (define-method-port
    get-enumerator
    System.Data.InternalDataCollectionBase
    GetEnumerator
    (System.Collections.IEnumerator))
  (define-method-port
    copy-to
    System.Data.InternalDataCollectionBase
    CopyTo
    (System.Void System.Array System.Int32))
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Data.InternalDataCollectionBase
    Count
    System.Int32)
  (define-field-port
    is-read-only?
    #f
    #f
    (property:)
    System.Data.InternalDataCollectionBase
    IsReadOnly
    System.Boolean)
  (define-field-port
    is-synchronized?
    #f
    #f
    (property:)
    System.Data.InternalDataCollectionBase
    IsSynchronized
    System.Boolean)
  (define-field-port
    sync-root
    #f
    #f
    (property:)
    System.Data.InternalDataCollectionBase
    SyncRoot
    System.Object))
