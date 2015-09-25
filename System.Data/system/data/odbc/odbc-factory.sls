(library (system data odbc odbc-factory)
  (export is?
          odbc-factory?
          create-connection
          create-permission
          create-command-builder
          create-data-adapter
          create-connection-string-builder
          create-parameter
          create-command
          instance)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Data.Odbc.OdbcFactory a))
  (define (odbc-factory? a) (clr-is System.Data.Odbc.OdbcFactory a))
  (define-method-port
    create-connection
    System.Data.Odbc.OdbcFactory
    CreateConnection
    (System.Data.Common.DbConnection))
  (define-method-port
    create-permission
    System.Data.Odbc.OdbcFactory
    CreatePermission
    (System.Security.CodeAccessPermission
      System.Security.Permissions.PermissionState))
  (define-method-port
    create-command-builder
    System.Data.Odbc.OdbcFactory
    CreateCommandBuilder
    (System.Data.Common.DbCommandBuilder))
  (define-method-port
    create-data-adapter
    System.Data.Odbc.OdbcFactory
    CreateDataAdapter
    (System.Data.Common.DbDataAdapter))
  (define-method-port
    create-connection-string-builder
    System.Data.Odbc.OdbcFactory
    CreateConnectionStringBuilder
    (System.Data.Common.DbConnectionStringBuilder))
  (define-method-port
    create-parameter
    System.Data.Odbc.OdbcFactory
    CreateParameter
    (System.Data.Common.DbParameter))
  (define-method-port
    create-command
    System.Data.Odbc.OdbcFactory
    CreateCommand
    (System.Data.Common.DbCommand))
  (define-field-port
    instance
    #f
    #f
    (static:)
    System.Data.Odbc.OdbcFactory
    Instance
    System.Data.Odbc.OdbcFactory))
