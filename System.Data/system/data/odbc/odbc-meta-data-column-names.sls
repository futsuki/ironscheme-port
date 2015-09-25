(library (system data odbc odbc-meta-data-column-names)
  (export is?
          odbc-meta-data-column-names?
          boolean-false-literal
          boolean-true-literal
          sqltype)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Data.Odbc.OdbcMetaDataColumnNames a))
  (define (odbc-meta-data-column-names? a)
    (clr-is System.Data.Odbc.OdbcMetaDataColumnNames a))
  (define-field-port
    boolean-false-literal
    #f
    #f
    (static:)
    System.Data.Odbc.OdbcMetaDataColumnNames
    BooleanFalseLiteral
    System.String)
  (define-field-port
    boolean-true-literal
    #f
    #f
    (static:)
    System.Data.Odbc.OdbcMetaDataColumnNames
    BooleanTrueLiteral
    System.String)
  (define-field-port
    sqltype
    #f
    #f
    (static:)
    System.Data.Odbc.OdbcMetaDataColumnNames
    SQLType
    System.String))
