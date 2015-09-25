(library (system data common db-data-adapter)
  (export is?
          db-data-adapter?
          fill-schema
          fill
          update
          get-fill-parameters
          default-source-table-name
          select-command-get
          select-command-set!
          select-command-update!
          delete-command-get
          delete-command-set!
          delete-command-update!
          insert-command-get
          insert-command-set!
          insert-command-update!
          update-command-get
          update-command-set!
          update-command-update!
          update-batch-size-get
          update-batch-size-set!
          update-batch-size-update!)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Data.Common.DbDataAdapter a))
  (define (db-data-adapter? a)
    (clr-is System.Data.Common.DbDataAdapter a))
  (define-method-port
    fill-schema
    System.Data.Common.DbDataAdapter
    FillSchema
    (System.Data.DataTable[]
      System.Data.DataSet
      System.Data.SchemaType
      System.String)
    (System.Data.DataTable System.Data.DataTable System.Data.SchemaType)
    (System.Data.DataTable[]
      System.Data.DataSet
      System.Data.SchemaType))
  (define-method-port
    fill
    System.Data.Common.DbDataAdapter
    Fill
    (System.Int32 System.Int32 System.Int32 System.Data.DataTable[])
    (System.Int32
      System.Data.DataSet
      System.Int32
      System.Int32
      System.String)
    (System.Int32 System.Data.DataSet System.String)
    (System.Int32 System.Data.DataTable)
    (System.Int32 System.Data.DataSet))
  (define-method-port
    update
    System.Data.Common.DbDataAdapter
    Update
    (System.Int32 System.Data.DataSet System.String)
    (System.Int32 System.Data.DataTable)
    (System.Int32 System.Data.DataSet)
    (System.Int32 System.Data.DataRow[]))
  (define-method-port
    get-fill-parameters
    System.Data.Common.DbDataAdapter
    GetFillParameters
    (System.Data.IDataParameter[]))
  (define-field-port
    default-source-table-name
    #f
    #f
    (static:)
    System.Data.Common.DbDataAdapter
    DefaultSourceTableName
    System.String)
  (define-field-port
    select-command-get
    select-command-set!
    select-command-update!
    (property:)
    System.Data.Common.DbDataAdapter
    SelectCommand
    System.Data.Common.DbCommand)
  (define-field-port
    delete-command-get
    delete-command-set!
    delete-command-update!
    (property:)
    System.Data.Common.DbDataAdapter
    DeleteCommand
    System.Data.Common.DbCommand)
  (define-field-port
    insert-command-get
    insert-command-set!
    insert-command-update!
    (property:)
    System.Data.Common.DbDataAdapter
    InsertCommand
    System.Data.Common.DbCommand)
  (define-field-port
    update-command-get
    update-command-set!
    update-command-update!
    (property:)
    System.Data.Common.DbDataAdapter
    UpdateCommand
    System.Data.Common.DbCommand)
  (define-field-port
    update-batch-size-get
    update-batch-size-set!
    update-batch-size-update!
    (property:)
    System.Data.Common.DbDataAdapter
    UpdateBatchSize
    System.Int32))
