(library (system data table-adapter-schema-info)
  (export new
          is?
          table-adapter-schema-info?
          provider-get
          provider-set!
          provider-update!
          adapter-get
          adapter-set!
          adapter-update!
          connection-get
          connection-set!
          connection-update!
          connection-string-get
          connection-string-set!
          connection-string-update!
          base-class-get
          base-class-set!
          base-class-update!
          name-get
          name-set!
          name-update!
          short-commands?-get
          short-commands?-set!
          short-commands?-update!
          commands-get
          commands-set!
          commands-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Data.TableAdapterSchemaInfo a ...)))))
  (define (is? a) (clr-is System.Data.TableAdapterSchemaInfo a))
  (define (table-adapter-schema-info? a)
    (clr-is System.Data.TableAdapterSchemaInfo a))
  (define-field-port
    provider-get
    provider-set!
    provider-update!
    ()
    System.Data.TableAdapterSchemaInfo
    Provider
    System.Data.Common.DbProviderFactory)
  (define-field-port
    adapter-get
    adapter-set!
    adapter-update!
    ()
    System.Data.TableAdapterSchemaInfo
    Adapter
    System.Data.Common.DbDataAdapter)
  (define-field-port
    connection-get
    connection-set!
    connection-update!
    ()
    System.Data.TableAdapterSchemaInfo
    Connection
    System.Data.Common.DbConnection)
  (define-field-port
    connection-string-get
    connection-string-set!
    connection-string-update!
    ()
    System.Data.TableAdapterSchemaInfo
    ConnectionString
    System.String)
  (define-field-port
    base-class-get
    base-class-set!
    base-class-update!
    ()
    System.Data.TableAdapterSchemaInfo
    BaseClass
    System.String)
  (define-field-port
    name-get
    name-set!
    name-update!
    ()
    System.Data.TableAdapterSchemaInfo
    Name
    System.String)
  (define-field-port
    short-commands?-get
    short-commands?-set!
    short-commands?-update!
    ()
    System.Data.TableAdapterSchemaInfo
    ShortCommands
    System.Boolean)
  (define-field-port
    commands-get
    commands-set!
    commands-update!
    ()
    System.Data.TableAdapterSchemaInfo
    Commands
    System.Collections.ArrayList))
