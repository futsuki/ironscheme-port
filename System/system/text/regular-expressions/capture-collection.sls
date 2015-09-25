(library (system text regular-expressions capture-collection)
  (export is?
          capture-collection?
          get-enumerator
          copy-to
          count
          is-read-only?
          is-synchronized?
          item
          sync-root)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Text.RegularExpressions.CaptureCollection a))
  (define (capture-collection? a)
    (clr-is System.Text.RegularExpressions.CaptureCollection a))
  (define-method-port
    get-enumerator
    System.Text.RegularExpressions.CaptureCollection
    GetEnumerator
    (System.Collections.IEnumerator))
  (define-method-port
    copy-to
    System.Text.RegularExpressions.CaptureCollection
    CopyTo
    (System.Void System.Array System.Int32))
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Text.RegularExpressions.CaptureCollection
    Count
    System.Int32)
  (define-field-port
    is-read-only?
    #f
    #f
    (property:)
    System.Text.RegularExpressions.CaptureCollection
    IsReadOnly
    System.Boolean)
  (define-field-port
    is-synchronized?
    #f
    #f
    (property:)
    System.Text.RegularExpressions.CaptureCollection
    IsSynchronized
    System.Boolean)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Text.RegularExpressions.CaptureCollection
    Item
    System.Text.RegularExpressions.Capture)
  (define-field-port
    sync-root
    #f
    #f
    (property:)
    System.Text.RegularExpressions.CaptureCollection
    SyncRoot
    System.Object))
