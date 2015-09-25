(library (system security permissions file-iopermission)
  (export new
          is?
          file-iopermission?
          get-hash-code
          union
          set-path-list
          from-xml
          is-subset-of?
          add-path-list
          get-path-list
          to-xml
          is-unrestricted?
          copy
          equals?
          intersect
          all-files-get
          all-files-set!
          all-files-update!
          all-local-files-get
          all-local-files-set!
          all-local-files-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Permissions.FileIOPermission
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.Permissions.FileIOPermission a))
  (define (file-iopermission? a)
    (clr-is System.Security.Permissions.FileIOPermission a))
  (define-method-port
    get-hash-code
    System.Security.Permissions.FileIOPermission
    GetHashCode
    (System.Int32))
  (define-method-port
    union
    System.Security.Permissions.FileIOPermission
    Union
    (System.Security.IPermission System.Security.IPermission))
  (define-method-port
    set-path-list
    System.Security.Permissions.FileIOPermission
    SetPathList
    (System.Void
      System.Security.Permissions.FileIOPermissionAccess
      System.String[])
    (System.Void
      System.Security.Permissions.FileIOPermissionAccess
      System.String))
  (define-method-port
    from-xml
    System.Security.Permissions.FileIOPermission
    FromXml
    (System.Void System.Security.SecurityElement))
  (define-method-port
    is-subset-of?
    System.Security.Permissions.FileIOPermission
    IsSubsetOf
    (System.Boolean System.Security.IPermission))
  (define-method-port
    add-path-list
    System.Security.Permissions.FileIOPermission
    AddPathList
    (System.Void
      System.Security.Permissions.FileIOPermissionAccess
      System.String[])
    (System.Void
      System.Security.Permissions.FileIOPermissionAccess
      System.String))
  (define-method-port
    get-path-list
    System.Security.Permissions.FileIOPermission
    GetPathList
    (System.String[]
      System.Security.Permissions.FileIOPermissionAccess))
  (define-method-port
    to-xml
    System.Security.Permissions.FileIOPermission
    ToXml
    (System.Security.SecurityElement))
  (define-method-port
    is-unrestricted?
    System.Security.Permissions.FileIOPermission
    IsUnrestricted
    (System.Boolean))
  (define-method-port
    copy
    System.Security.Permissions.FileIOPermission
    Copy
    (System.Security.IPermission))
  (define-method-port
    equals?
    System.Security.Permissions.FileIOPermission
    Equals
    (System.Boolean System.Object))
  (define-method-port
    intersect
    System.Security.Permissions.FileIOPermission
    Intersect
    (System.Security.IPermission System.Security.IPermission))
  (define-field-port
    all-files-get
    all-files-set!
    all-files-update!
    (property:)
    System.Security.Permissions.FileIOPermission
    AllFiles
    System.Security.Permissions.FileIOPermissionAccess)
  (define-field-port
    all-local-files-get
    all-local-files-set!
    all-local-files-update!
    (property:)
    System.Security.Permissions.FileIOPermission
    AllLocalFiles
    System.Security.Permissions.FileIOPermissionAccess))
