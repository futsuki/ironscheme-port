(library (system data common dbdata-permission-attribute)
  (export is?
          dbdata-permission-attribute?
          should-serialize-key-restrictions?
          should-serialize-connection-string?
          allow-blank-password?-get
          allow-blank-password?-set!
          allow-blank-password?-update!
          key-restrictions-get
          key-restrictions-set!
          key-restrictions-update!
          connection-string-get
          connection-string-set!
          connection-string-update!
          key-restriction-behavior-get
          key-restriction-behavior-set!
          key-restriction-behavior-update!)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Data.Common.DBDataPermissionAttribute a))
  (define (dbdata-permission-attribute? a)
    (clr-is System.Data.Common.DBDataPermissionAttribute a))
  (define-method-port
    should-serialize-key-restrictions?
    System.Data.Common.DBDataPermissionAttribute
    ShouldSerializeKeyRestrictions
    (System.Boolean))
  (define-method-port
    should-serialize-connection-string?
    System.Data.Common.DBDataPermissionAttribute
    ShouldSerializeConnectionString
    (System.Boolean))
  (define-field-port
    allow-blank-password?-get
    allow-blank-password?-set!
    allow-blank-password?-update!
    (property:)
    System.Data.Common.DBDataPermissionAttribute
    AllowBlankPassword
    System.Boolean)
  (define-field-port
    key-restrictions-get
    key-restrictions-set!
    key-restrictions-update!
    (property:)
    System.Data.Common.DBDataPermissionAttribute
    KeyRestrictions
    System.String)
  (define-field-port
    connection-string-get
    connection-string-set!
    connection-string-update!
    (property:)
    System.Data.Common.DBDataPermissionAttribute
    ConnectionString
    System.String)
  (define-field-port
    key-restriction-behavior-get
    key-restriction-behavior-set!
    key-restriction-behavior-update!
    (property:)
    System.Data.Common.DBDataPermissionAttribute
    KeyRestrictionBehavior
    System.Data.KeyRestrictionBehavior))
