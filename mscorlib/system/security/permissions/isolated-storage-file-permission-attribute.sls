(library (system
          security
          permissions
          isolated-storage-file-permission-attribute)
  (export new
          is?
          isolated-storage-file-permission-attribute?
          create-permission)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Permissions.IsolatedStorageFilePermissionAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Security.Permissions.IsolatedStorageFilePermissionAttribute
      a))
  (define (isolated-storage-file-permission-attribute? a)
    (clr-is
      System.Security.Permissions.IsolatedStorageFilePermissionAttribute
      a))
  (define-method-port
    create-permission
    System.Security.Permissions.IsolatedStorageFilePermissionAttribute
    CreatePermission
    (System.Security.IPermission)))
