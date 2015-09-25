(library (system data ole-db ole-db-factory)
  (export is?
          ole-db-factory?
          create-connection
          create-permission
          create-command-builder
          create-data-adapter
          create-connection-string-builder
          create-parameter
          create-command
          instance)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Data.OleDb.OleDbFactory a))
  (define (ole-db-factory? a) (clr-is System.Data.OleDb.OleDbFactory a))
  (define-method-port
    create-connection
    System.Data.OleDb.OleDbFactory
    CreateConnection
    (System.Data.Common.DbConnection))
  (define-method-port
    create-permission
    System.Data.OleDb.OleDbFactory
    CreatePermission
    (System.Security.CodeAccessPermission
      System.Security.Permissions.PermissionState))
  (define-method-port
    create-command-builder
    System.Data.OleDb.OleDbFactory
    CreateCommandBuilder
    (System.Data.Common.DbCommandBuilder))
  (define-method-port
    create-data-adapter
    System.Data.OleDb.OleDbFactory
    CreateDataAdapter
    (System.Data.Common.DbDataAdapter))
  (define-method-port
    create-connection-string-builder
    System.Data.OleDb.OleDbFactory
    CreateConnectionStringBuilder
    (System.Data.Common.DbConnectionStringBuilder))
  (define-method-port
    create-parameter
    System.Data.OleDb.OleDbFactory
    CreateParameter
    (System.Data.Common.DbParameter))
  (define-method-port
    create-command
    System.Data.OleDb.OleDbFactory
    CreateCommand
    (System.Data.Common.DbCommand))
  (define-field-port
    instance
    #f
    #f
    (static:)
    System.Data.OleDb.OleDbFactory
    Instance
    System.Data.OleDb.OleDbFactory))
