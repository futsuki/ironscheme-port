(library (system data sql-client sqldebugging)
  (export new is? sqldebugging?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Data.SqlClient.SQLDebugging a ...)))))
  (define (is? a) (clr-is System.Data.SqlClient.SQLDebugging a))
  (define (sqldebugging? a)
    (clr-is System.Data.SqlClient.SQLDebugging a)))
