(library (system data ole-db ole-db-meta-data-collection-names)
  (export is?
          ole-db-meta-data-collection-names?
          catalogs
          collations
          columns
          indexes
          procedure-columns
          procedure-parameters
          procedures
          tables
          views)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Data.OleDb.OleDbMetaDataCollectionNames a))
  (define (ole-db-meta-data-collection-names? a)
    (clr-is System.Data.OleDb.OleDbMetaDataCollectionNames a))
  (define-field-port
    catalogs
    #f
    #f
    (static:)
    System.Data.OleDb.OleDbMetaDataCollectionNames
    Catalogs
    System.String)
  (define-field-port
    collations
    #f
    #f
    (static:)
    System.Data.OleDb.OleDbMetaDataCollectionNames
    Collations
    System.String)
  (define-field-port
    columns
    #f
    #f
    (static:)
    System.Data.OleDb.OleDbMetaDataCollectionNames
    Columns
    System.String)
  (define-field-port
    indexes
    #f
    #f
    (static:)
    System.Data.OleDb.OleDbMetaDataCollectionNames
    Indexes
    System.String)
  (define-field-port
    procedure-columns
    #f
    #f
    (static:)
    System.Data.OleDb.OleDbMetaDataCollectionNames
    ProcedureColumns
    System.String)
  (define-field-port
    procedure-parameters
    #f
    #f
    (static:)
    System.Data.OleDb.OleDbMetaDataCollectionNames
    ProcedureParameters
    System.String)
  (define-field-port
    procedures
    #f
    #f
    (static:)
    System.Data.OleDb.OleDbMetaDataCollectionNames
    Procedures
    System.String)
  (define-field-port
    tables
    #f
    #f
    (static:)
    System.Data.OleDb.OleDbMetaDataCollectionNames
    Tables
    System.String)
  (define-field-port
    views
    #f
    #f
    (static:)
    System.Data.OleDb.OleDbMetaDataCollectionNames
    Views
    System.String))