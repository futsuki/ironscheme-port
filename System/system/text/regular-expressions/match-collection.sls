(library (system text regular-expressions match-collection)
  (export is?
          match-collection?
          get-enumerator
          copy-to
          count
          is-read-only?
          is-synchronized?
          item
          sync-root)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Text.RegularExpressions.MatchCollection a))
  (define (match-collection? a)
    (clr-is System.Text.RegularExpressions.MatchCollection a))
  (define-method-port
    get-enumerator
    System.Text.RegularExpressions.MatchCollection
    GetEnumerator
    (System.Collections.IEnumerator))
  (define-method-port
    copy-to
    System.Text.RegularExpressions.MatchCollection
    CopyTo
    (System.Void System.Array System.Int32))
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Text.RegularExpressions.MatchCollection
    Count
    System.Int32)
  (define-field-port
    is-read-only?
    #f
    #f
    (property:)
    System.Text.RegularExpressions.MatchCollection
    IsReadOnly
    System.Boolean)
  (define-field-port
    is-synchronized?
    #f
    #f
    (property:)
    System.Text.RegularExpressions.MatchCollection
    IsSynchronized
    System.Boolean)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Text.RegularExpressions.MatchCollection
    Item
    System.Text.RegularExpressions.Match)
  (define-field-port
    sync-root
    #f
    #f
    (property:)
    System.Text.RegularExpressions.MatchCollection
    SyncRoot
    System.Object))
