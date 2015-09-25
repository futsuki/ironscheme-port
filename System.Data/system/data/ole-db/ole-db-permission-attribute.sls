(library (system data ole-db ole-db-permission-attribute)
  (export new
          is?
          ole-db-permission-attribute?
          create-permission
          provider-get
          provider-set!
          provider-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Data.OleDb.OleDbPermissionAttribute
             a
             ...)))))
  (define (is? a) (clr-is System.Data.OleDb.OleDbPermissionAttribute a))
  (define (ole-db-permission-attribute? a)
    (clr-is System.Data.OleDb.OleDbPermissionAttribute a))
  (define-method-port
    create-permission
    System.Data.OleDb.OleDbPermissionAttribute
    CreatePermission
    (System.Security.IPermission))
  (define-field-port
    provider-get
    provider-set!
    provider-update!
    (property:)
    System.Data.OleDb.OleDbPermissionAttribute
    Provider
    System.String))
