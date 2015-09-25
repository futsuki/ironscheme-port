(library (system data common dbdata-permission)
  (export is?
          dbdata-permission?
          union
          from-xml
          is-subset-of?
          add
          to-xml
          is-unrestricted?
          copy
          intersect
          allow-blank-password?-get
          allow-blank-password?-set!
          allow-blank-password?-update!)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Data.Common.DBDataPermission a))
  (define (dbdata-permission? a)
    (clr-is System.Data.Common.DBDataPermission a))
  (define-method-port
    union
    System.Data.Common.DBDataPermission
    Union
    (System.Security.IPermission System.Security.IPermission))
  (define-method-port
    from-xml
    System.Data.Common.DBDataPermission
    FromXml
    (System.Void System.Security.SecurityElement))
  (define-method-port
    is-subset-of?
    System.Data.Common.DBDataPermission
    IsSubsetOf
    (System.Boolean System.Security.IPermission))
  (define-method-port
    add
    System.Data.Common.DBDataPermission
    Add
    (System.Void
      System.String
      System.String
      System.Data.KeyRestrictionBehavior))
  (define-method-port
    to-xml
    System.Data.Common.DBDataPermission
    ToXml
    (System.Security.SecurityElement))
  (define-method-port
    is-unrestricted?
    System.Data.Common.DBDataPermission
    IsUnrestricted
    (System.Boolean))
  (define-method-port
    copy
    System.Data.Common.DBDataPermission
    Copy
    (System.Security.IPermission))
  (define-method-port
    intersect
    System.Data.Common.DBDataPermission
    Intersect
    (System.Security.IPermission System.Security.IPermission))
  (define-field-port
    allow-blank-password?-get
    allow-blank-password?-set!
    allow-blank-password?-update!
    (property:)
    System.Data.Common.DBDataPermission
    AllowBlankPassword
    System.Boolean))
