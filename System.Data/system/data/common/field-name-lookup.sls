(library (system data common field-name-lookup)
  (export new
          is?
          field-name-lookup?
          copy-to
          insert
          remove-at
          index-of
          add
          contains?
          remove
          clear
          count
          is-fixed-size?
          is-read-only?
          is-synchronized?
          item-get
          item-set!
          item-update!
          sync-root)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Data.Common.FieldNameLookup a ...)))))
  (define (is? a) (clr-is System.Data.Common.FieldNameLookup a))
  (define (field-name-lookup? a)
    (clr-is System.Data.Common.FieldNameLookup a))
  (define-method-port
    copy-to
    System.Data.Common.FieldNameLookup
    CopyTo
    (System.Void System.Array System.Int32))
  (define-method-port
    insert
    System.Data.Common.FieldNameLookup
    Insert
    (System.Void System.Int32 System.Object))
  (define-method-port
    remove-at
    System.Data.Common.FieldNameLookup
    RemoveAt
    (System.Void System.Int32))
  (define-method-port
    index-of
    System.Data.Common.FieldNameLookup
    IndexOf
    (System.Int32 System.Object))
  (define-method-port
    add
    System.Data.Common.FieldNameLookup
    Add
    (System.Int32 System.Object))
  (define-method-port
    contains?
    System.Data.Common.FieldNameLookup
    Contains
    (System.Boolean System.Object))
  (define-method-port
    remove
    System.Data.Common.FieldNameLookup
    Remove
    (System.Void System.Object))
  (define-method-port
    clear
    System.Data.Common.FieldNameLookup
    Clear
    (System.Void))
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Data.Common.FieldNameLookup
    Count
    System.Int32)
  (define-field-port
    is-fixed-size?
    #f
    #f
    (property:)
    System.Data.Common.FieldNameLookup
    IsFixedSize
    System.Boolean)
  (define-field-port
    is-read-only?
    #f
    #f
    (property:)
    System.Data.Common.FieldNameLookup
    IsReadOnly
    System.Boolean)
  (define-field-port
    is-synchronized?
    #f
    #f
    (property:)
    System.Data.Common.FieldNameLookup
    IsSynchronized
    System.Boolean)
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.Data.Common.FieldNameLookup
    Item
    System.String)
  (define-field-port
    sync-root
    #f
    #f
    (property:)
    System.Data.Common.FieldNameLookup
    SyncRoot
    System.Object))
