(library (system security permissions reflection-permission-attribute)
  (export new
          is?
          reflection-permission-attribute?
          create-permission
          flags-get
          flags-set!
          flags-update!
          member-access?-get
          member-access?-set!
          member-access?-update!
          reflection-emit?-get
          reflection-emit?-set!
          reflection-emit?-update!
          restricted-member-access?-get
          restricted-member-access?-set!
          restricted-member-access?-update!
          type-information?-get
          type-information?-set!
          type-information?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Permissions.ReflectionPermissionAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Security.Permissions.ReflectionPermissionAttribute
      a))
  (define (reflection-permission-attribute? a)
    (clr-is
      System.Security.Permissions.ReflectionPermissionAttribute
      a))
  (define-method-port
    create-permission
    System.Security.Permissions.ReflectionPermissionAttribute
    CreatePermission
    (System.Security.IPermission))
  (define-field-port
    flags-get
    flags-set!
    flags-update!
    (property:)
    System.Security.Permissions.ReflectionPermissionAttribute
    Flags
    System.Security.Permissions.ReflectionPermissionFlag)
  (define-field-port
    member-access?-get
    member-access?-set!
    member-access?-update!
    (property:)
    System.Security.Permissions.ReflectionPermissionAttribute
    MemberAccess
    System.Boolean)
  (define-field-port
    reflection-emit?-get
    reflection-emit?-set!
    reflection-emit?-update!
    (property:)
    System.Security.Permissions.ReflectionPermissionAttribute
    ReflectionEmit
    System.Boolean)
  (define-field-port
    restricted-member-access?-get
    restricted-member-access?-set!
    restricted-member-access?-update!
    (property:)
    System.Security.Permissions.ReflectionPermissionAttribute
    RestrictedMemberAccess
    System.Boolean)
  (define-field-port
    type-information?-get
    type-information?-set!
    type-information?-update!
    (property:)
    System.Security.Permissions.ReflectionPermissionAttribute
    TypeInformation
    System.Boolean))
