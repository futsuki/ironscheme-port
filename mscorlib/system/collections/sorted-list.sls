(library (system collections sorted-list)
  (export new
          is?
          sorted-list?
          copy-to
          index-of-value
          index-of-key
          contains-key?
          synchronized
          contains-value?
          remove-at
          get-key-list
          get-enumerator
          get-value-list
          add
          contains?
          remove
          get-by-index
          trim-to-size
          get-key
          clone
          clear
          set-by-index
          count
          is-synchronized?
          sync-root
          is-fixed-size?
          is-read-only?
          keys
          values
          item-get
          item-set!
          item-update!
          capacity-get
          capacity-set!
          capacity-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Collections.SortedList a ...)))))
  (define (is? a) (clr-is System.Collections.SortedList a))
  (define (sorted-list? a) (clr-is System.Collections.SortedList a))
  (define-method-port
    copy-to
    System.Collections.SortedList
    CopyTo
    (System.Void System.Array System.Int32))
  (define-method-port
    index-of-value
    System.Collections.SortedList
    IndexOfValue
    (System.Int32 System.Object))
  (define-method-port
    index-of-key
    System.Collections.SortedList
    IndexOfKey
    (System.Int32 System.Object))
  (define-method-port
    contains-key?
    System.Collections.SortedList
    ContainsKey
    (System.Boolean System.Object))
  (define-method-port
    synchronized
    System.Collections.SortedList
    Synchronized
    (static:
      System.Collections.SortedList
      System.Collections.SortedList))
  (define-method-port
    contains-value?
    System.Collections.SortedList
    ContainsValue
    (System.Boolean System.Object))
  (define-method-port
    remove-at
    System.Collections.SortedList
    RemoveAt
    (System.Void System.Int32))
  (define-method-port
    get-key-list
    System.Collections.SortedList
    GetKeyList
    (System.Collections.IList))
  (define-method-port
    get-enumerator
    System.Collections.SortedList
    GetEnumerator
    (System.Collections.IDictionaryEnumerator))
  (define-method-port
    get-value-list
    System.Collections.SortedList
    GetValueList
    (System.Collections.IList))
  (define-method-port
    add
    System.Collections.SortedList
    Add
    (System.Void System.Object System.Object))
  (define-method-port
    contains?
    System.Collections.SortedList
    Contains
    (System.Boolean System.Object))
  (define-method-port
    remove
    System.Collections.SortedList
    Remove
    (System.Void System.Object))
  (define-method-port
    get-by-index
    System.Collections.SortedList
    GetByIndex
    (System.Object System.Int32))
  (define-method-port
    trim-to-size
    System.Collections.SortedList
    TrimToSize
    (System.Void))
  (define-method-port
    get-key
    System.Collections.SortedList
    GetKey
    (System.Object System.Int32))
  (define-method-port
    clone
    System.Collections.SortedList
    Clone
    (System.Object))
  (define-method-port
    clear
    System.Collections.SortedList
    Clear
    (System.Void))
  (define-method-port
    set-by-index
    System.Collections.SortedList
    SetByIndex
    (System.Void System.Int32 System.Object))
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Collections.SortedList
    Count
    System.Int32)
  (define-field-port
    is-synchronized?
    #f
    #f
    (property:)
    System.Collections.SortedList
    IsSynchronized
    System.Boolean)
  (define-field-port
    sync-root
    #f
    #f
    (property:)
    System.Collections.SortedList
    SyncRoot
    System.Object)
  (define-field-port
    is-fixed-size?
    #f
    #f
    (property:)
    System.Collections.SortedList
    IsFixedSize
    System.Boolean)
  (define-field-port
    is-read-only?
    #f
    #f
    (property:)
    System.Collections.SortedList
    IsReadOnly
    System.Boolean)
  (define-field-port
    keys
    #f
    #f
    (property:)
    System.Collections.SortedList
    Keys
    System.Collections.ICollection)
  (define-field-port
    values
    #f
    #f
    (property:)
    System.Collections.SortedList
    Values
    System.Collections.ICollection)
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.Collections.SortedList
    Item
    System.Object)
  (define-field-port
    capacity-get
    capacity-set!
    capacity-update!
    (property:)
    System.Collections.SortedList
    Capacity
    System.Int32))
