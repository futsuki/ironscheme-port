(library (system collections array-list)
  (export new
          is?
          array-list?
          remove-at
          insert
          reverse
          copy-to
          last-index-of
          add-range
          remove-range
          get-range
          sort
          index-of
          adapter
          get-enumerator
          repeat
          add
          contains?
          remove
          trim-to-size
          read-only
          synchronized
          insert-range
          fixed-size
          binary-search
          clone
          clear
          set-range
          to-array
          item-get
          item-set!
          item-update!
          count
          capacity-get
          capacity-set!
          capacity-update!
          is-fixed-size?
          is-read-only?
          is-synchronized?
          sync-root)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Collections.ArrayList a ...)))))
  (define (is? a) (clr-is System.Collections.ArrayList a))
  (define (array-list? a) (clr-is System.Collections.ArrayList a))
  (define-method-port
    remove-at
    System.Collections.ArrayList
    RemoveAt
    (System.Void System.Int32))
  (define-method-port
    insert
    System.Collections.ArrayList
    Insert
    (System.Void System.Int32 System.Object))
  (define-method-port
    reverse
    System.Collections.ArrayList
    Reverse
    (System.Void System.Int32 System.Int32)
    (System.Void))
  (define-method-port
    copy-to
    System.Collections.ArrayList
    CopyTo
    (System.Void System.Int32 System.Array System.Int32 System.Int32)
    (System.Void System.Array System.Int32)
    (System.Void System.Array))
  (define-method-port
    last-index-of
    System.Collections.ArrayList
    LastIndexOf
    (System.Int32 System.Object System.Int32 System.Int32)
    (System.Int32 System.Object System.Int32)
    (System.Int32 System.Object))
  (define-method-port
    add-range
    System.Collections.ArrayList
    AddRange
    (System.Void System.Collections.ICollection))
  (define-method-port
    remove-range
    System.Collections.ArrayList
    RemoveRange
    (System.Void System.Int32 System.Int32))
  (define-method-port
    get-range
    System.Collections.ArrayList
    GetRange
    (System.Collections.ArrayList System.Int32 System.Int32))
  (define-method-port
    sort
    System.Collections.ArrayList
    Sort
    (System.Void System.Int32 System.Int32 System.Collections.IComparer)
    (System.Void System.Collections.IComparer)
    (System.Void))
  (define-method-port
    index-of
    System.Collections.ArrayList
    IndexOf
    (System.Int32 System.Object System.Int32 System.Int32)
    (System.Int32 System.Object System.Int32)
    (System.Int32 System.Object))
  (define-method-port
    adapter
    System.Collections.ArrayList
    Adapter
    (static: System.Collections.ArrayList System.Collections.IList))
  (define-method-port
    get-enumerator
    System.Collections.ArrayList
    GetEnumerator
    (System.Collections.IEnumerator System.Int32 System.Int32)
    (System.Collections.IEnumerator))
  (define-method-port
    repeat
    System.Collections.ArrayList
    Repeat
    (static: System.Collections.ArrayList System.Object System.Int32))
  (define-method-port
    add
    System.Collections.ArrayList
    Add
    (System.Int32 System.Object))
  (define-method-port
    contains?
    System.Collections.ArrayList
    Contains
    (System.Boolean System.Object))
  (define-method-port
    remove
    System.Collections.ArrayList
    Remove
    (System.Void System.Object))
  (define-method-port
    trim-to-size
    System.Collections.ArrayList
    TrimToSize
    (System.Void))
  (define-method-port
    read-only
    System.Collections.ArrayList
    ReadOnly
    (static: System.Collections.IList System.Collections.IList)
    (static: System.Collections.ArrayList System.Collections.ArrayList))
  (define-method-port
    synchronized
    System.Collections.ArrayList
    Synchronized
    (static: System.Collections.IList System.Collections.IList)
    (static: System.Collections.ArrayList System.Collections.ArrayList))
  (define-method-port
    insert-range
    System.Collections.ArrayList
    InsertRange
    (System.Void System.Int32 System.Collections.ICollection))
  (define-method-port
    fixed-size
    System.Collections.ArrayList
    FixedSize
    (static: System.Collections.IList System.Collections.IList)
    (static: System.Collections.ArrayList System.Collections.ArrayList))
  (define-method-port
    binary-search
    System.Collections.ArrayList
    BinarySearch
    (System.Int32
      System.Int32
      System.Int32
      System.Object
      System.Collections.IComparer)
    (System.Int32 System.Object System.Collections.IComparer)
    (System.Int32 System.Object))
  (define-method-port
    clone
    System.Collections.ArrayList
    Clone
    (System.Object))
  (define-method-port
    clear
    System.Collections.ArrayList
    Clear
    (System.Void))
  (define-method-port
    set-range
    System.Collections.ArrayList
    SetRange
    (System.Void System.Int32 System.Collections.ICollection))
  (define-method-port
    to-array
    System.Collections.ArrayList
    ToArray
    (System.Array System.Type)
    (System.Object[]))
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.Collections.ArrayList
    Item
    System.Object)
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Collections.ArrayList
    Count
    System.Int32)
  (define-field-port
    capacity-get
    capacity-set!
    capacity-update!
    (property:)
    System.Collections.ArrayList
    Capacity
    System.Int32)
  (define-field-port
    is-fixed-size?
    #f
    #f
    (property:)
    System.Collections.ArrayList
    IsFixedSize
    System.Boolean)
  (define-field-port
    is-read-only?
    #f
    #f
    (property:)
    System.Collections.ArrayList
    IsReadOnly
    System.Boolean)
  (define-field-port
    is-synchronized?
    #f
    #f
    (property:)
    System.Collections.ArrayList
    IsSynchronized
    System.Boolean)
  (define-field-port
    sync-root
    #f
    #f
    (property:)
    System.Collections.ArrayList
    SyncRoot
    System.Object))
