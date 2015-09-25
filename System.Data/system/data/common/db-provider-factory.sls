(library (system data common db-provider-factory)
  (export is?
          db-provider-factory?
          create-connection
          create-permission
          create-command-builder
          create-data-adapter
          create-connection-string-builder
          create-parameter
          create-data-source-enumerator
          create-command
          can-create-data-source-enumerator?)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Data.Common.DbProviderFactory a))
  (define (db-provider-factory? a)
    (clr-is System.Data.Common.DbProviderFactory a))
  (define-method-port
    create-connection
    System.Data.Common.DbProviderFactory
    CreateConnection
    (System.Data.Common.DbConnection))
  (define-method-port
    create-permission
    System.Data.Common.DbProviderFactory
    CreatePermission
    (System.Security.CodeAccessPermission
      System.Security.Permissions.PermissionState))
  (define-method-port
    create-command-builder
    System.Data.Common.DbProviderFactory
    CreateCommandBuilder
    (System.Data.Common.DbCommandBuilder))
  (define-method-port
    create-data-adapter
    System.Data.Common.DbProviderFactory
    CreateDataAdapter
    (System.Data.Common.DbDataAdapter))
  (define-method-port
    create-connection-string-builder
    System.Data.Common.DbProviderFactory
    CreateConnectionStringBuilder
    (System.Data.Common.DbConnectionStringBuilder))
  (define-method-port
    create-parameter
    System.Data.Common.DbProviderFactory
    CreateParameter
    (System.Data.Common.DbParameter))
  (define-method-port
    create-data-source-enumerator
    System.Data.Common.DbProviderFactory
    CreateDataSourceEnumerator
    (System.Data.Common.DbDataSourceEnumerator))
  (define-method-port
    create-command
    System.Data.Common.DbProviderFactory
    CreateCommand
    (System.Data.Common.DbCommand))
  (define-field-port
    can-create-data-source-enumerator?
    #f
    #f
    (property:)
    System.Data.Common.DbProviderFactory
    CanCreateDataSourceEnumerator
    System.Boolean))
