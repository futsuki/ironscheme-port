(library (system diagnostics event-log-permission-entry-collection)
  (export is?
          event-log-permission-entry-collection?
          insert
          add-range
          index-of
          add
          contains?
          remove
          copy-to
          item-get
          item-set!
          item-update!)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Diagnostics.EventLogPermissionEntryCollection a))
  (define (event-log-permission-entry-collection? a)
    (clr-is System.Diagnostics.EventLogPermissionEntryCollection a))
  (define-method-port
    insert
    System.Diagnostics.EventLogPermissionEntryCollection
    Insert
    (System.Void
      System.Int32
      System.Diagnostics.EventLogPermissionEntry))
  (define-method-port
    add-range
    System.Diagnostics.EventLogPermissionEntryCollection
    AddRange
    (System.Void System.Diagnostics.EventLogPermissionEntryCollection)
    (System.Void System.Diagnostics.EventLogPermissionEntry[]))
  (define-method-port
    index-of
    System.Diagnostics.EventLogPermissionEntryCollection
    IndexOf
    (System.Int32 System.Diagnostics.EventLogPermissionEntry))
  (define-method-port
    add
    System.Diagnostics.EventLogPermissionEntryCollection
    Add
    (System.Int32 System.Diagnostics.EventLogPermissionEntry))
  (define-method-port
    contains?
    System.Diagnostics.EventLogPermissionEntryCollection
    Contains
    (System.Boolean System.Diagnostics.EventLogPermissionEntry))
  (define-method-port
    remove
    System.Diagnostics.EventLogPermissionEntryCollection
    Remove
    (System.Void System.Diagnostics.EventLogPermissionEntry))
  (define-method-port
    copy-to
    System.Diagnostics.EventLogPermissionEntryCollection
    CopyTo
    (System.Void
      System.Diagnostics.EventLogPermissionEntry[]
      System.Int32))
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.Diagnostics.EventLogPermissionEntryCollection
    Item
    System.Diagnostics.EventLogPermissionEntry))
