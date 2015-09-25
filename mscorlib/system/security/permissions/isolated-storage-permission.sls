(library (system security permissions isolated-storage-permission)
  (export is?
          isolated-storage-permission?
          from-xml
          to-xml
          is-unrestricted?
          user-quota-get
          user-quota-set!
          user-quota-update!
          usage-allowed-get
          usage-allowed-set!
          usage-allowed-update!)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Security.Permissions.IsolatedStoragePermission a))
  (define (isolated-storage-permission? a)
    (clr-is System.Security.Permissions.IsolatedStoragePermission a))
  (define-method-port
    from-xml
    System.Security.Permissions.IsolatedStoragePermission
    FromXml
    (System.Void System.Security.SecurityElement))
  (define-method-port
    to-xml
    System.Security.Permissions.IsolatedStoragePermission
    ToXml
    (System.Security.SecurityElement))
  (define-method-port
    is-unrestricted?
    System.Security.Permissions.IsolatedStoragePermission
    IsUnrestricted
    (System.Boolean))
  (define-field-port
    user-quota-get
    user-quota-set!
    user-quota-update!
    (property:)
    System.Security.Permissions.IsolatedStoragePermission
    UserQuota
    System.Int64)
  (define-field-port
    usage-allowed-get
    usage-allowed-set!
    usage-allowed-update!
    (property:)
    System.Security.Permissions.IsolatedStoragePermission
    UsageAllowed
    System.Security.Permissions.IsolatedStorageContainment))
