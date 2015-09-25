(library (system data common db-provider-factories)
  (export is? db-provider-factories? get-factory-classes get-factory)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Data.Common.DbProviderFactories a))
  (define (db-provider-factories? a)
    (clr-is System.Data.Common.DbProviderFactories a))
  (define-method-port
    get-factory-classes
    System.Data.Common.DbProviderFactories
    GetFactoryClasses
    (static: System.Data.DataTable))
  (define-method-port
    get-factory
    System.Data.Common.DbProviderFactories
    GetFactory
    (static: System.Data.Common.DbProviderFactory System.String)
    (static: System.Data.Common.DbProviderFactory System.Data.DataRow)))
