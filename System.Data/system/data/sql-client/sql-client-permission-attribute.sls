(library (system data sql-client sql-client-permission-attribute)
  (export new is? sql-client-permission-attribute? create-permission)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Data.SqlClient.SqlClientPermissionAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Data.SqlClient.SqlClientPermissionAttribute a))
  (define (sql-client-permission-attribute? a)
    (clr-is System.Data.SqlClient.SqlClientPermissionAttribute a))
  (define-method-port
    create-permission
    System.Data.SqlClient.SqlClientPermissionAttribute
    CreatePermission
    (System.Security.IPermission)))
