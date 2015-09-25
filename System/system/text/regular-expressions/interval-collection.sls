(library (system text regular-expressions interval-collection)
  (export new
          is?
          interval-collection?
          copy-to
          sort
          get-enumerator
          get-meta-collection
          add
          clear
          normalize
          item-get
          item-set!
          item-update!
          count
          is-synchronized?
          sync-root)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Text.RegularExpressions.IntervalCollection
             a
             ...)))))
  (define (is? a)
    (clr-is System.Text.RegularExpressions.IntervalCollection a))
  (define (interval-collection? a)
    (clr-is System.Text.RegularExpressions.IntervalCollection a))
  (define-method-port
    copy-to
    System.Text.RegularExpressions.IntervalCollection
    CopyTo
    (System.Void System.Array System.Int32))
  (define-method-port
    sort
    System.Text.RegularExpressions.IntervalCollection
    Sort
    (System.Void))
  (define-method-port
    get-enumerator
    System.Text.RegularExpressions.IntervalCollection
    GetEnumerator
    (System.Collections.IEnumerator))
  (define-method-port
    get-meta-collection
    System.Text.RegularExpressions.IntervalCollection
    GetMetaCollection
    (System.Text.RegularExpressions.IntervalCollection
      System.Text.RegularExpressions.IntervalCollection+CostDelegate))
  (define-method-port
    add
    System.Text.RegularExpressions.IntervalCollection
    Add
    (System.Void System.Text.RegularExpressions.Interval))
  (define-method-port
    clear
    System.Text.RegularExpressions.IntervalCollection
    Clear
    (System.Void))
  (define-method-port
    normalize
    System.Text.RegularExpressions.IntervalCollection
    Normalize
    (System.Void))
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.Text.RegularExpressions.IntervalCollection
    Item
    System.Text.RegularExpressions.Interval)
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Text.RegularExpressions.IntervalCollection
    Count
    System.Int32)
  (define-field-port
    is-synchronized?
    #f
    #f
    (property:)
    System.Text.RegularExpressions.IntervalCollection
    IsSynchronized
    System.Boolean)
  (define-field-port
    sync-root
    #f
    #f
    (property:)
    System.Text.RegularExpressions.IntervalCollection
    SyncRoot
    System.Object))
