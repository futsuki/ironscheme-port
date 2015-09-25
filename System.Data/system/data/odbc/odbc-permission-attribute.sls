(library (system data odbc odbc-permission-attribute)
  (export new is? odbc-permission-attribute? create-permission)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Data.Odbc.OdbcPermissionAttribute a ...)))))
  (define (is? a) (clr-is System.Data.Odbc.OdbcPermissionAttribute a))
  (define (odbc-permission-attribute? a)
    (clr-is System.Data.Odbc.OdbcPermissionAttribute a))
  (define-method-port
    create-permission
    System.Data.Odbc.OdbcPermissionAttribute
    CreatePermission
    (System.Security.IPermission)))
