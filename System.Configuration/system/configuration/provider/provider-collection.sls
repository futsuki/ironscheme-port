(library (system configuration provider provider-collection)
  (export new
          is?
          provider-collection?
          copy-to
          set-read-only
          get-enumerator
          add
          remove
          clear
          count
          is-synchronized?
          sync-root
          item)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.Provider.ProviderCollection
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.Provider.ProviderCollection a))
  (define (provider-collection? a)
    (clr-is System.Configuration.Provider.ProviderCollection a))
  (define-method-port
    copy-to
    System.Configuration.Provider.ProviderCollection
    CopyTo
    (System.Void
      System.Configuration.Provider.ProviderBase[]
      System.Int32))
  (define-method-port
    set-read-only
    System.Configuration.Provider.ProviderCollection
    SetReadOnly
    (System.Void))
  (define-method-port
    get-enumerator
    System.Configuration.Provider.ProviderCollection
    GetEnumerator
    (System.Collections.IEnumerator))
  (define-method-port
    add
    System.Configuration.Provider.ProviderCollection
    Add
    (System.Void System.Configuration.Provider.ProviderBase))
  (define-method-port
    remove
    System.Configuration.Provider.ProviderCollection
    Remove
    (System.Void System.String))
  (define-method-port
    clear
    System.Configuration.Provider.ProviderCollection
    Clear
    (System.Void))
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Configuration.Provider.ProviderCollection
    Count
    System.Int32)
  (define-field-port
    is-synchronized?
    #f
    #f
    (property:)
    System.Configuration.Provider.ProviderCollection
    IsSynchronized
    System.Boolean)
  (define-field-port
    sync-root
    #f
    #f
    (property:)
    System.Configuration.Provider.ProviderCollection
    SyncRoot
    System.Object)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Configuration.Provider.ProviderCollection
    Item
    System.Configuration.Provider.ProviderBase))
