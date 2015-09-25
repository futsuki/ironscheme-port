(library (system
          security
          permissions
          isolated-storage-permission-attribute)
  (export is?
          isolated-storage-permission-attribute?
          usage-allowed-get
          usage-allowed-set!
          usage-allowed-update!
          user-quota-get
          user-quota-set!
          user-quota-update!)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is
      System.Security.Permissions.IsolatedStoragePermissionAttribute
      a))
  (define (isolated-storage-permission-attribute? a)
    (clr-is
      System.Security.Permissions.IsolatedStoragePermissionAttribute
      a))
  (define-field-port
    usage-allowed-get
    usage-allowed-set!
    usage-allowed-update!
    (property:)
    System.Security.Permissions.IsolatedStoragePermissionAttribute
    UsageAllowed
    System.Security.Permissions.IsolatedStorageContainment)
  (define-field-port
    user-quota-get
    user-quota-set!
    user-quota-update!
    (property:)
    System.Security.Permissions.IsolatedStoragePermissionAttribute
    UserQuota
    System.Int64))
