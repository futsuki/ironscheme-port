(library (system text regular-expressions group-collection)
  (export is?
          group-collection?
          get-enumerator
          copy-to
          count
          is-read-only?
          is-synchronized?
          item
          item
          sync-root)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Text.RegularExpressions.GroupCollection a))
  (define (group-collection? a)
    (clr-is System.Text.RegularExpressions.GroupCollection a))
  (define-method-port
    get-enumerator
    System.Text.RegularExpressions.GroupCollection
    GetEnumerator
    (System.Collections.IEnumerator))
  (define-method-port
    copy-to
    System.Text.RegularExpressions.GroupCollection
    CopyTo
    (System.Void System.Array System.Int32))
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Text.RegularExpressions.GroupCollection
    Count
    System.Int32)
  (define-field-port
    is-read-only?
    #f
    #f
    (property:)
    System.Text.RegularExpressions.GroupCollection
    IsReadOnly
    System.Boolean)
  (define-field-port
    is-synchronized?
    #f
    #f
    (property:)
    System.Text.RegularExpressions.GroupCollection
    IsSynchronized
    System.Boolean)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Text.RegularExpressions.GroupCollection
    Item
    System.Text.RegularExpressions.Group)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Text.RegularExpressions.GroupCollection
    Item
    System.Text.RegularExpressions.Group)
  (define-field-port
    sync-root
    #f
    #f
    (property:)
    System.Text.RegularExpressions.GroupCollection
    SyncRoot
    System.Object))
