(library (system configuration settings-property-collection)
  (export new
          is?
          settings-property-collection?
          copy-to
          set-read-only
          get-enumerator
          add
          remove
          clone
          clear
          count
          is-synchronized?
          item
          sync-root)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.SettingsPropertyCollection
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.SettingsPropertyCollection a))
  (define (settings-property-collection? a)
    (clr-is System.Configuration.SettingsPropertyCollection a))
  (define-method-port
    copy-to
    System.Configuration.SettingsPropertyCollection
    CopyTo
    (System.Void System.Array System.Int32))
  (define-method-port
    set-read-only
    System.Configuration.SettingsPropertyCollection
    SetReadOnly
    (System.Void))
  (define-method-port
    get-enumerator
    System.Configuration.SettingsPropertyCollection
    GetEnumerator
    (System.Collections.IEnumerator))
  (define-method-port
    add
    System.Configuration.SettingsPropertyCollection
    Add
    (System.Void System.Configuration.SettingsProperty))
  (define-method-port
    remove
    System.Configuration.SettingsPropertyCollection
    Remove
    (System.Void System.String))
  (define-method-port
    clone
    System.Configuration.SettingsPropertyCollection
    Clone
    (System.Object))
  (define-method-port
    clear
    System.Configuration.SettingsPropertyCollection
    Clear
    (System.Void))
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Configuration.SettingsPropertyCollection
    Count
    System.Int32)
  (define-field-port
    is-synchronized?
    #f
    #f
    (property:)
    System.Configuration.SettingsPropertyCollection
    IsSynchronized
    System.Boolean)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Configuration.SettingsPropertyCollection
    Item
    System.Configuration.SettingsProperty)
  (define-field-port
    sync-root
    #f
    #f
    (property:)
    System.Configuration.SettingsPropertyCollection
    SyncRoot
    System.Object))
