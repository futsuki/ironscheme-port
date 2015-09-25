(library (system data common db-data-source-enumerator)
  (export is? db-data-source-enumerator? get-data-sources)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Data.Common.DbDataSourceEnumerator a))
  (define (db-data-source-enumerator? a)
    (clr-is System.Data.Common.DbDataSourceEnumerator a))
  (define-method-port
    get-data-sources
    System.Data.Common.DbDataSourceEnumerator
    GetDataSources
    (System.Data.DataTable)))
