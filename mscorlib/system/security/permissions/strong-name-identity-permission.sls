(library (system security permissions strong-name-identity-permission)
  (export new
          is?
          strong-name-identity-permission?
          union
          from-xml
          is-subset-of?
          to-xml
          copy
          intersect
          name-get
          name-set!
          name-update!
          public-key-get
          public-key-set!
          public-key-update!
          version-get
          version-set!
          version-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Permissions.StrongNameIdentityPermission
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.Permissions.StrongNameIdentityPermission a))
  (define (strong-name-identity-permission? a)
    (clr-is System.Security.Permissions.StrongNameIdentityPermission a))
  (define-method-port
    union
    System.Security.Permissions.StrongNameIdentityPermission
    Union
    (System.Security.IPermission System.Security.IPermission))
  (define-method-port
    from-xml
    System.Security.Permissions.StrongNameIdentityPermission
    FromXml
    (System.Void System.Security.SecurityElement))
  (define-method-port
    is-subset-of?
    System.Security.Permissions.StrongNameIdentityPermission
    IsSubsetOf
    (System.Boolean System.Security.IPermission))
  (define-method-port
    to-xml
    System.Security.Permissions.StrongNameIdentityPermission
    ToXml
    (System.Security.SecurityElement))
  (define-method-port
    copy
    System.Security.Permissions.StrongNameIdentityPermission
    Copy
    (System.Security.IPermission))
  (define-method-port
    intersect
    System.Security.Permissions.StrongNameIdentityPermission
    Intersect
    (System.Security.IPermission System.Security.IPermission))
  (define-field-port
    name-get
    name-set!
    name-update!
    (property:)
    System.Security.Permissions.StrongNameIdentityPermission
    Name
    System.String)
  (define-field-port
    public-key-get
    public-key-set!
    public-key-update!
    (property:)
    System.Security.Permissions.StrongNameIdentityPermission
    PublicKey
    System.Security.Permissions.StrongNamePublicKeyBlob)
  (define-field-port
    version-get
    version-set!
    version-update!
    (property:)
    System.Security.Permissions.StrongNameIdentityPermission
    Version
    System.Version))
