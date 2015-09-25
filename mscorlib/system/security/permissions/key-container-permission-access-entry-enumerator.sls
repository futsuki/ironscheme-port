(library (system
          security
          permissions
          key-container-permission-access-entry-enumerator)
  (export is?
          key-container-permission-access-entry-enumerator?
          reset
          move-next?
          current)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is
      System.Security.Permissions.KeyContainerPermissionAccessEntryEnumerator
      a))
  (define (key-container-permission-access-entry-enumerator? a)
    (clr-is
      System.Security.Permissions.KeyContainerPermissionAccessEntryEnumerator
      a))
  (define-method-port
    reset
    System.Security.Permissions.KeyContainerPermissionAccessEntryEnumerator
    Reset
    (System.Void))
  (define-method-port
    move-next?
    System.Security.Permissions.KeyContainerPermissionAccessEntryEnumerator
    MoveNext
    (System.Boolean))
  (define-field-port
    current
    #f
    #f
    (property:)
    System.Security.Permissions.KeyContainerPermissionAccessEntryEnumerator
    Current
    System.Security.Permissions.KeyContainerPermissionAccessEntry))
