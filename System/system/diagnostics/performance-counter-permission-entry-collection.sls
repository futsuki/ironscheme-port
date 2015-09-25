(library (system
          diagnostics
          performance-counter-permission-entry-collection)
  (export is?
          performance-counter-permission-entry-collection?
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
    (clr-is
      System.Diagnostics.PerformanceCounterPermissionEntryCollection
      a))
  (define (performance-counter-permission-entry-collection? a)
    (clr-is
      System.Diagnostics.PerformanceCounterPermissionEntryCollection
      a))
  (define-method-port
    insert
    System.Diagnostics.PerformanceCounterPermissionEntryCollection
    Insert
    (System.Void
      System.Int32
      System.Diagnostics.PerformanceCounterPermissionEntry))
  (define-method-port
    add-range
    System.Diagnostics.PerformanceCounterPermissionEntryCollection
    AddRange
    (System.Void
      System.Diagnostics.PerformanceCounterPermissionEntryCollection)
    (System.Void
      System.Diagnostics.PerformanceCounterPermissionEntry[]))
  (define-method-port
    index-of
    System.Diagnostics.PerformanceCounterPermissionEntryCollection
    IndexOf
    (System.Int32 System.Diagnostics.PerformanceCounterPermissionEntry))
  (define-method-port
    add
    System.Diagnostics.PerformanceCounterPermissionEntryCollection
    Add
    (System.Int32 System.Diagnostics.PerformanceCounterPermissionEntry))
  (define-method-port
    contains?
    System.Diagnostics.PerformanceCounterPermissionEntryCollection
    Contains
    (System.Boolean
      System.Diagnostics.PerformanceCounterPermissionEntry))
  (define-method-port
    remove
    System.Diagnostics.PerformanceCounterPermissionEntryCollection
    Remove
    (System.Void System.Diagnostics.PerformanceCounterPermissionEntry))
  (define-method-port
    copy-to
    System.Diagnostics.PerformanceCounterPermissionEntryCollection
    CopyTo
    (System.Void
      System.Diagnostics.PerformanceCounterPermissionEntry[]
      System.Int32))
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.Diagnostics.PerformanceCounterPermissionEntryCollection
    Item
    System.Diagnostics.PerformanceCounterPermissionEntry))
