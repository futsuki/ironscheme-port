(library (system net cookie-collection)
  (export new
          is?
          cookie-collection?
          get-enumerator
          add
          copy-to
          count
          is-synchronized?
          sync-root
          is-read-only?
          item
          item)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Net.CookieCollection a ...)))))
  (define (is? a) (clr-is System.Net.CookieCollection a))
  (define (cookie-collection? a) (clr-is System.Net.CookieCollection a))
  (define-method-port
    get-enumerator
    System.Net.CookieCollection
    GetEnumerator
    (System.Collections.IEnumerator))
  (define-method-port
    add
    System.Net.CookieCollection
    Add
    (System.Void System.Net.CookieCollection)
    (System.Void System.Net.Cookie))
  (define-method-port
    copy-to
    System.Net.CookieCollection
    CopyTo
    (System.Void System.Net.Cookie[] System.Int32)
    (System.Void System.Array System.Int32))
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Net.CookieCollection
    Count
    System.Int32)
  (define-field-port
    is-synchronized?
    #f
    #f
    (property:)
    System.Net.CookieCollection
    IsSynchronized
    System.Boolean)
  (define-field-port
    sync-root
    #f
    #f
    (property:)
    System.Net.CookieCollection
    SyncRoot
    System.Object)
  (define-field-port
    is-read-only?
    #f
    #f
    (property:)
    System.Net.CookieCollection
    IsReadOnly
    System.Boolean)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Net.CookieCollection
    Item
    System.Net.Cookie)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Net.CookieCollection
    Item
    System.Net.Cookie))
