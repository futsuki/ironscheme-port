(library (system data sql sql-data-source-enumerator)
  (export is? sql-data-source-enumerator? get-data-sources instance)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Data.Sql.SqlDataSourceEnumerator a))
  (define (sql-data-source-enumerator? a)
    (clr-is System.Data.Sql.SqlDataSourceEnumerator a))
  (define-method-port
    get-data-sources
    System.Data.Sql.SqlDataSourceEnumerator
    GetDataSources
    (System.Data.DataTable))
  (define-field-port
    instance
    #f
    #f
    (static: property:)
    System.Data.Sql.SqlDataSourceEnumerator
    Instance
    System.Data.Sql.SqlDataSourceEnumerator))
