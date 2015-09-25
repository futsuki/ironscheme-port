(library (system collections collection-base)
  (export is?
          collection-base?
          remove-at
          get-enumerator
          clear
          count
          capacity-get
          capacity-set!
          capacity-update!)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Collections.CollectionBase a))
  (define (collection-base? a)
    (clr-is System.Collections.CollectionBase a))
  (define-method-port
    remove-at
    System.Collections.CollectionBase
    RemoveAt
    (System.Void System.Int32))
  (define-method-port
    get-enumerator
    System.Collections.CollectionBase
    GetEnumerator
    (System.Collections.IEnumerator))
  (define-method-port
    clear
    System.Collections.CollectionBase
    Clear
    (System.Void))
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Collections.CollectionBase
    Count
    System.Int32)
  (define-field-port
    capacity-get
    capacity-set!
    capacity-update!
    (property:)
    System.Collections.CollectionBase
    Capacity
    System.Int32))
