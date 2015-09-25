(library (system collections specialized string-collection)
  (export new
          is?
          string-collection?
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
          item-get
          item-set!
          item-update!
          count
          is-read-only?
          is-synchronized?
          sync-root)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Collections.Specialized.StringCollection
             a
             ...)))))
  (define (is? a)
    (clr-is System.Collections.Specialized.StringCollection a))
  (define (string-collection? a)
    (clr-is System.Collections.Specialized.StringCollection a))
  (define-method-port
    copy-to
    System.Collections.Specialized.StringCollection
    CopyTo
    (System.Void System.String[] System.Int32))
  (define-method-port
    insert
    System.Collections.Specialized.StringCollection
    Insert
    (System.Void System.Int32 System.String))
  (define-method-port
    add-range
    System.Collections.Specialized.StringCollection
    AddRange
    (System.Void System.String[]))
  (define-method-port
    remove-at
    System.Collections.Specialized.StringCollection
    RemoveAt
    (System.Void System.Int32))
  (define-method-port
    index-of
    System.Collections.Specialized.StringCollection
    IndexOf
    (System.Int32 System.String))
  (define-method-port
    get-enumerator
    System.Collections.Specialized.StringCollection
    GetEnumerator
    (System.Collections.Specialized.StringEnumerator))
  (define-method-port
    add
    System.Collections.Specialized.StringCollection
    Add
    (System.Int32 System.String))
  (define-method-port
    contains?
    System.Collections.Specialized.StringCollection
    Contains
    (System.Boolean System.String))
  (define-method-port
    remove
    System.Collections.Specialized.StringCollection
    Remove
    (System.Void System.String))
  (define-method-port
    clear
    System.Collections.Specialized.StringCollection
    Clear
    (System.Void))
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.Collections.Specialized.StringCollection
    Item
    System.String)
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Collections.Specialized.StringCollection
    Count
    System.Int32)
  (define-field-port
    is-read-only?
    #f
    #f
    (property:)
    System.Collections.Specialized.StringCollection
    IsReadOnly
    System.Boolean)
  (define-field-port
    is-synchronized?
    #f
    #f
    (property:)
    System.Collections.Specialized.StringCollection
    IsSynchronized
    System.Boolean)
  (define-field-port
    sync-root
    #f
    #f
    (property:)
    System.Collections.Specialized.StringCollection
    SyncRoot
    System.Object))
