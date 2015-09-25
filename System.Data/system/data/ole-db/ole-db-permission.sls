(library (system data ole-db ole-db-permission)
  (export new
          is?
          ole-db-permission?
          copy
          provider-get
          provider-set!
          provider-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Data.OleDb.OleDbPermission a ...)))))
  (define (is? a) (clr-is System.Data.OleDb.OleDbPermission a))
  (define (ole-db-permission? a)
    (clr-is System.Data.OleDb.OleDbPermission a))
  (define-method-port
    copy
    System.Data.OleDb.OleDbPermission
    Copy
    (System.Security.IPermission))
  (define-field-port
    provider-get
    provider-set!
    provider-update!
    (property:)
    System.Data.OleDb.OleDbPermission
    Provider
    System.String))
