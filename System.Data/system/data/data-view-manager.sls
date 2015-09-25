(library (system data data-view-manager)
  (export new
          is?
          data-view-manager?
          create-data-view
          data-set-get
          data-set-set!
          data-set-update!
          data-view-setting-collection-string-get
          data-view-setting-collection-string-set!
          data-view-setting-collection-string-update!
          data-view-settings)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Data.DataViewManager a ...)))))
  (define (is? a) (clr-is System.Data.DataViewManager a))
  (define (data-view-manager? a) (clr-is System.Data.DataViewManager a))
  (define-method-port
    create-data-view
    System.Data.DataViewManager
    CreateDataView
    (System.Data.DataView System.Data.DataTable))
  (define-field-port
    data-set-get
    data-set-set!
    data-set-update!
    (property:)
    System.Data.DataViewManager
    DataSet
    System.Data.DataSet)
  (define-field-port
    data-view-setting-collection-string-get
    data-view-setting-collection-string-set!
    data-view-setting-collection-string-update!
    (property:)
    System.Data.DataViewManager
    DataViewSettingCollectionString
    System.String)
  (define-field-port
    data-view-settings
    #f
    #f
    (property:)
    System.Data.DataViewManager
    DataViewSettings
    System.Data.DataViewSettingCollection))
