(library (system diagnostics trace-listener-collection)
  (export is?
          trace-listener-collection?
          copy-to
          insert
          add-range
          remove-at
          index-of
          get-enumerator
          add
          contains?
          remove
          clear
          count
          item
          item-get
          item-set!
          item-update!)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Diagnostics.TraceListenerCollection a))
  (define (trace-listener-collection? a)
    (clr-is System.Diagnostics.TraceListenerCollection a))
  (define-method-port
    copy-to
    System.Diagnostics.TraceListenerCollection
    CopyTo
    (System.Void System.Diagnostics.TraceListener[] System.Int32))
  (define-method-port
    insert
    System.Diagnostics.TraceListenerCollection
    Insert
    (System.Void System.Int32 System.Diagnostics.TraceListener))
  (define-method-port
    add-range
    System.Diagnostics.TraceListenerCollection
    AddRange
    (System.Void System.Diagnostics.TraceListenerCollection)
    (System.Void System.Diagnostics.TraceListener[]))
  (define-method-port
    remove-at
    System.Diagnostics.TraceListenerCollection
    RemoveAt
    (System.Void System.Int32))
  (define-method-port
    index-of
    System.Diagnostics.TraceListenerCollection
    IndexOf
    (System.Int32 System.Diagnostics.TraceListener))
  (define-method-port
    get-enumerator
    System.Diagnostics.TraceListenerCollection
    GetEnumerator
    (System.Collections.IEnumerator))
  (define-method-port
    add
    System.Diagnostics.TraceListenerCollection
    Add
    (System.Int32 System.Diagnostics.TraceListener))
  (define-method-port
    contains?
    System.Diagnostics.TraceListenerCollection
    Contains
    (System.Boolean System.Diagnostics.TraceListener))
  (define-method-port
    remove
    System.Diagnostics.TraceListenerCollection
    Remove
    (System.Void System.Diagnostics.TraceListener)
    (System.Void System.String))
  (define-method-port
    clear
    System.Diagnostics.TraceListenerCollection
    Clear
    (System.Void))
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Diagnostics.TraceListenerCollection
    Count
    System.Int32)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Diagnostics.TraceListenerCollection
    Item
    System.Diagnostics.TraceListener)
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.Diagnostics.TraceListenerCollection
    Item
    System.Diagnostics.TraceListener))
