(library (system diagnostics event-log-entry-collection)
  (export is?
          event-log-entry-collection?
          get-enumerator
          copy-to
          count
          item)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Diagnostics.EventLogEntryCollection a))
  (define (event-log-entry-collection? a)
    (clr-is System.Diagnostics.EventLogEntryCollection a))
  (define-method-port
    get-enumerator
    System.Diagnostics.EventLogEntryCollection
    GetEnumerator
    (System.Collections.IEnumerator))
  (define-method-port
    copy-to
    System.Diagnostics.EventLogEntryCollection
    CopyTo
    (System.Void System.Diagnostics.EventLogEntry[] System.Int32))
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Diagnostics.EventLogEntryCollection
    Count
    System.Int32)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Diagnostics.EventLogEntryCollection
    Item
    System.Diagnostics.EventLogEntry))
