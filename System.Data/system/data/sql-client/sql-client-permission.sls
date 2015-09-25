(library (system data sql-client sql-client-permission)
  (export new is? sql-client-permission? add copy)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Data.SqlClient.SqlClientPermission a ...)))))
  (define (is? a) (clr-is System.Data.SqlClient.SqlClientPermission a))
  (define (sql-client-permission? a)
    (clr-is System.Data.SqlClient.SqlClientPermission a))
  (define-method-port
    add
    System.Data.SqlClient.SqlClientPermission
    Add
    (System.Void
      System.String
      System.String
      System.Data.KeyRestrictionBehavior))
  (define-method-port
    copy
    System.Data.SqlClient.SqlClientPermission
    Copy
    (System.Security.IPermission)))
