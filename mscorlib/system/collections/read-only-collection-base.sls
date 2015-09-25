(library (system collections read-only-collection-base)
  (export is? read-only-collection-base? get-enumerator count)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Collections.ReadOnlyCollectionBase a))
  (define (read-only-collection-base? a)
    (clr-is System.Collections.ReadOnlyCollectionBase a))
  (define-method-port
    get-enumerator
    System.Collections.ReadOnlyCollectionBase
    GetEnumerator
    (System.Collections.IEnumerator))
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Collections.ReadOnlyCollectionBase
    Count
    System.Int32))
