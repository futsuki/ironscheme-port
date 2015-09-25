(library (system configuration settings-property-value-collection)
  (export new
          is?
          settings-property-value-collection?
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
             System.Configuration.SettingsPropertyValueCollection
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.SettingsPropertyValueCollection a))
  (define (settings-property-value-collection? a)
    (clr-is System.Configuration.SettingsPropertyValueCollection a))
  (define-method-port
    copy-to
    System.Configuration.SettingsPropertyValueCollection
    CopyTo
    (System.Void System.Array System.Int32))
  (define-method-port
    set-read-only
    System.Configuration.SettingsPropertyValueCollection
    SetReadOnly
    (System.Void))
  (define-method-port
    get-enumerator
    System.Configuration.SettingsPropertyValueCollection
    GetEnumerator
    (System.Collections.IEnumerator))
  (define-method-port
    add
    System.Configuration.SettingsPropertyValueCollection
    Add
    (System.Void System.Configuration.SettingsPropertyValue))
  (define-method-port
    remove
    System.Configuration.SettingsPropertyValueCollection
    Remove
    (System.Void System.String))
  (define-method-port
    clone
    System.Configuration.SettingsPropertyValueCollection
    Clone
    (System.Object))
  (define-method-port
    clear
    System.Configuration.SettingsPropertyValueCollection
    Clear
    (System.Void))
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Configuration.SettingsPropertyValueCollection
    Count
    System.Int32)
  (define-field-port
    is-synchronized?
    #f
    #f
    (property:)
    System.Configuration.SettingsPropertyValueCollection
    IsSynchronized
    System.Boolean)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Configuration.SettingsPropertyValueCollection
    Item
    System.Configuration.SettingsPropertyValue)
  (define-field-port
    sync-root
    #f
    #f
    (property:)
    System.Configuration.SettingsPropertyValueCollection
    SyncRoot
    System.Object))
