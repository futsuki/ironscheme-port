(library (system data odbc odbc-type-converter)
  (export new is? odbc-type-converter? get-type-map infer-from-value)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Data.Odbc.OdbcTypeConverter a ...)))))
  (define (is? a) (clr-is System.Data.Odbc.OdbcTypeConverter a))
  (define (odbc-type-converter? a)
    (clr-is System.Data.Odbc.OdbcTypeConverter a))
  (define-method-port
    get-type-map
    System.Data.Odbc.OdbcTypeConverter
    GetTypeMap
    (static: System.Data.Odbc.OdbcTypeMap System.Data.DbType)
    (static: System.Data.Odbc.OdbcTypeMap System.Data.Odbc.SQL_TYPE)
    (static: System.Data.Odbc.OdbcTypeMap System.Data.Odbc.OdbcType))
  (define-method-port
    infer-from-value
    System.Data.Odbc.OdbcTypeConverter
    InferFromValue
    (static: System.Data.Odbc.OdbcTypeMap System.Object)))
