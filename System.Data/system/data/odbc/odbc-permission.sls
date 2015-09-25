(library (system data odbc odbc-permission)
  (export new is? odbc-permission? add copy)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Data.Odbc.OdbcPermission a ...)))))
  (define (is? a) (clr-is System.Data.Odbc.OdbcPermission a))
  (define (odbc-permission? a)
    (clr-is System.Data.Odbc.OdbcPermission a))
  (define-method-port
    add
    System.Data.Odbc.OdbcPermission
    Add
    (System.Void
      System.String
      System.String
      System.Data.KeyRestrictionBehavior))
  (define-method-port
    copy
    System.Data.Odbc.OdbcPermission
    Copy
    (System.Security.IPermission)))
