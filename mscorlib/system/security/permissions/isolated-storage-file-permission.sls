(library (system security permissions isolated-storage-file-permission)
  (export new
          is?
          isolated-storage-file-permission?
          union
          is-subset-of?
          to-xml
          copy
          intersect)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Permissions.IsolatedStorageFilePermission
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Security.Permissions.IsolatedStorageFilePermission
      a))
  (define (isolated-storage-file-permission? a)
    (clr-is
      System.Security.Permissions.IsolatedStorageFilePermission
      a))
  (define-method-port
    union
    System.Security.Permissions.IsolatedStorageFilePermission
    Union
    (System.Security.IPermission System.Security.IPermission))
  (define-method-port
    is-subset-of?
    System.Security.Permissions.IsolatedStorageFilePermission
    IsSubsetOf
    (System.Boolean System.Security.IPermission))
  (define-method-port
    to-xml
    System.Security.Permissions.IsolatedStorageFilePermission
    ToXml
    (System.Security.SecurityElement))
  (define-method-port
    copy
    System.Security.Permissions.IsolatedStorageFilePermission
    Copy
    (System.Security.IPermission))
  (define-method-port
    intersect
    System.Security.Permissions.IsolatedStorageFilePermission
    Intersect
    (System.Security.IPermission System.Security.IPermission)))
