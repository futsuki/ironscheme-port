(library (system data data-view-setting-collection)
  (export is?
          data-view-setting-collection?
          get-enumerator
          copy-to
          count
          is-read-only?
          is-synchronized?
          item-get
          item-set!
          item-update!
          item
          item-get
          item-set!
          item-update!
          sync-root)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Data.DataViewSettingCollection a))
  (define (data-view-setting-collection? a)
    (clr-is System.Data.DataViewSettingCollection a))
  (define-method-port
    get-enumerator
    System.Data.DataViewSettingCollection
    GetEnumerator
    (System.Collections.IEnumerator))
  (define-method-port
    copy-to
    System.Data.DataViewSettingCollection
    CopyTo
    (System.Void System.Data.DataViewSetting[] System.Int32)
    (System.Void System.Array System.Int32))
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Data.DataViewSettingCollection
    Count
    System.Int32)
  (define-field-port
    is-read-only?
    #f
    #f
    (property:)
    System.Data.DataViewSettingCollection
    IsReadOnly
    System.Boolean)
  (define-field-port
    is-synchronized?
    #f
    #f
    (property:)
    System.Data.DataViewSettingCollection
    IsSynchronized
    System.Boolean)
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.Data.DataViewSettingCollection
    Item
    System.Data.DataViewSetting)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Data.DataViewSettingCollection
    Item
    System.Data.DataViewSetting)
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.Data.DataViewSettingCollection
    Item
    System.Data.DataViewSetting)
  (define-field-port
    sync-root
    #f
    #f
    (property:)
    System.Data.DataViewSettingCollection
    SyncRoot
    System.Object))
