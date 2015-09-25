(library (system data sql-client sql-client-meta-data-collection-names)
  (export is?
          sql-client-meta-data-collection-names?
          columns
          databases
          foreign-keys
          index-columns
          indexes
          parameters
          procedure-columns
          procedures
          tables
          user-defined-types
          users
          view-columns
          views)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Data.SqlClient.SqlClientMetaDataCollectionNames a))
  (define (sql-client-meta-data-collection-names? a)
    (clr-is System.Data.SqlClient.SqlClientMetaDataCollectionNames a))
  (define-field-port
    columns
    #f
    #f
    (static:)
    System.Data.SqlClient.SqlClientMetaDataCollectionNames
    Columns
    System.String)
  (define-field-port
    databases
    #f
    #f
    (static:)
    System.Data.SqlClient.SqlClientMetaDataCollectionNames
    Databases
    System.String)
  (define-field-port
    foreign-keys
    #f
    #f
    (static:)
    System.Data.SqlClient.SqlClientMetaDataCollectionNames
    ForeignKeys
    System.String)
  (define-field-port
    index-columns
    #f
    #f
    (static:)
    System.Data.SqlClient.SqlClientMetaDataCollectionNames
    IndexColumns
    System.String)
  (define-field-port
    indexes
    #f
    #f
    (static:)
    System.Data.SqlClient.SqlClientMetaDataCollectionNames
    Indexes
    System.String)
  (define-field-port
    parameters
    #f
    #f
    (static:)
    System.Data.SqlClient.SqlClientMetaDataCollectionNames
    Parameters
    System.String)
  (define-field-port
    procedure-columns
    #f
    #f
    (static:)
    System.Data.SqlClient.SqlClientMetaDataCollectionNames
    ProcedureColumns
    System.String)
  (define-field-port
    procedures
    #f
    #f
    (static:)
    System.Data.SqlClient.SqlClientMetaDataCollectionNames
    Procedures
    System.String)
  (define-field-port
    tables
    #f
    #f
    (static:)
    System.Data.SqlClient.SqlClientMetaDataCollectionNames
    Tables
    System.String)
  (define-field-port
    user-defined-types
    #f
    #f
    (static:)
    System.Data.SqlClient.SqlClientMetaDataCollectionNames
    UserDefinedTypes
    System.String)
  (define-field-port
    users
    #f
    #f
    (static:)
    System.Data.SqlClient.SqlClientMetaDataCollectionNames
    Users
    System.String)
  (define-field-port
    view-columns
    #f
    #f
    (static:)
    System.Data.SqlClient.SqlClientMetaDataCollectionNames
    ViewColumns
    System.String)
  (define-field-port
    views
    #f
    #f
    (static:)
    System.Data.SqlClient.SqlClientMetaDataCollectionNames
    Views
    System.String))
