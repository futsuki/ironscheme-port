(library (system data data-row)
  (export is?
          data-row?
          reject-changes
          begin-edit
          delete
          get-parent-rows
          clear-errors
          set-modified
          get-child-rows
          set-added
          set-column-error
          accept-changes
          get-parent-row
          set-parent-row
          is-null?
          has-version?
          cancel-edit
          get-columns-in-error
          end-edit
          get-column-error
          has-errors?
          item-get
          item-set!
          item-update!
          item-get
          item-set!
          item-update!
          item-get
          item-set!
          item-update!
          item
          item
          item
          item-array-get
          item-array-set!
          item-array-update!
          row-state
          table
          row-error-get
          row-error-set!
          row-error-update!)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Data.DataRow a))
  (define (data-row? a) (clr-is System.Data.DataRow a))
  (define-method-port
    reject-changes
    System.Data.DataRow
    RejectChanges
    (System.Void))
  (define-method-port
    begin-edit
    System.Data.DataRow
    BeginEdit
    (System.Void))
  (define-method-port delete System.Data.DataRow Delete (System.Void))
  (define-method-port
    get-parent-rows
    System.Data.DataRow
    GetParentRows
    (System.Data.DataRow[] System.String System.Data.DataRowVersion)
    (System.Data.DataRow[]
      System.Data.DataRelation
      System.Data.DataRowVersion)
    (System.Data.DataRow[] System.String)
    (System.Data.DataRow[] System.Data.DataRelation))
  (define-method-port
    clear-errors
    System.Data.DataRow
    ClearErrors
    (System.Void))
  (define-method-port
    set-modified
    System.Data.DataRow
    SetModified
    (System.Void))
  (define-method-port
    get-child-rows
    System.Data.DataRow
    GetChildRows
    (System.Data.DataRow[] System.String System.Data.DataRowVersion)
    (System.Data.DataRow[]
      System.Data.DataRelation
      System.Data.DataRowVersion)
    (System.Data.DataRow[] System.String)
    (System.Data.DataRow[] System.Data.DataRelation))
  (define-method-port
    set-added
    System.Data.DataRow
    SetAdded
    (System.Void))
  (define-method-port
    set-column-error
    System.Data.DataRow
    SetColumnError
    (System.Void System.String System.String)
    (System.Void System.Int32 System.String)
    (System.Void System.Data.DataColumn System.String))
  (define-method-port
    accept-changes
    System.Data.DataRow
    AcceptChanges
    (System.Void))
  (define-method-port
    get-parent-row
    System.Data.DataRow
    GetParentRow
    (System.Data.DataRow System.String System.Data.DataRowVersion)
    (System.Data.DataRow
      System.Data.DataRelation
      System.Data.DataRowVersion)
    (System.Data.DataRow System.String)
    (System.Data.DataRow System.Data.DataRelation))
  (define-method-port
    set-parent-row
    System.Data.DataRow
    SetParentRow
    (System.Void System.Data.DataRow System.Data.DataRelation)
    (System.Void System.Data.DataRow))
  (define-method-port
    is-null?
    System.Data.DataRow
    IsNull
    (System.Boolean System.Data.DataColumn System.Data.DataRowVersion)
    (System.Boolean System.String)
    (System.Boolean System.Int32)
    (System.Boolean System.Data.DataColumn))
  (define-method-port
    has-version?
    System.Data.DataRow
    HasVersion
    (System.Boolean System.Data.DataRowVersion))
  (define-method-port
    cancel-edit
    System.Data.DataRow
    CancelEdit
    (System.Void))
  (define-method-port
    get-columns-in-error
    System.Data.DataRow
    GetColumnsInError
    (System.Data.DataColumn[]))
  (define-method-port
    end-edit
    System.Data.DataRow
    EndEdit
    (System.Void))
  (define-method-port
    get-column-error
    System.Data.DataRow
    GetColumnError
    (System.String System.String)
    (System.String System.Int32)
    (System.String System.Data.DataColumn))
  (define-field-port
    has-errors?
    #f
    #f
    (property:)
    System.Data.DataRow
    HasErrors
    System.Boolean)
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.Data.DataRow
    Item
    System.Object)
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.Data.DataRow
    Item
    System.Object)
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.Data.DataRow
    Item
    System.Object)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Data.DataRow
    Item
    System.Object)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Data.DataRow
    Item
    System.Object)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Data.DataRow
    Item
    System.Object)
  (define-field-port
    item-array-get
    item-array-set!
    item-array-update!
    (property:)
    System.Data.DataRow
    ItemArray
    System.Object[])
  (define-field-port
    row-state
    #f
    #f
    (property:)
    System.Data.DataRow
    RowState
    System.Data.DataRowState)
  (define-field-port
    table
    #f
    #f
    (property:)
    System.Data.DataRow
    Table
    System.Data.DataTable)
  (define-field-port
    row-error-get
    row-error-set!
    row-error-update!
    (property:)
    System.Data.DataRow
    RowError
    System.String))
