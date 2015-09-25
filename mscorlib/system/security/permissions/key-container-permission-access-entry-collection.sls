(library (system
          security
          permissions
          key-container-permission-access-entry-collection)
  (export is?
          key-container-permission-access-entry-collection?
          copy-to
          index-of
          get-enumerator
          add
          remove
          clear
          count
          is-synchronized?
          item
          sync-root)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is
      System.Security.Permissions.KeyContainerPermissionAccessEntryCollection
      a))
  (define (key-container-permission-access-entry-collection? a)
    (clr-is
      System.Security.Permissions.KeyContainerPermissionAccessEntryCollection
      a))
  (define-method-port
    copy-to
    System.Security.Permissions.KeyContainerPermissionAccessEntryCollection
    CopyTo
    (System.Void
      System.Security.Permissions.KeyContainerPermissionAccessEntry[]
      System.Int32))
  (define-method-port
    index-of
    System.Security.Permissions.KeyContainerPermissionAccessEntryCollection
    IndexOf
    (System.Int32
      System.Security.Permissions.KeyContainerPermissionAccessEntry))
  (define-method-port
    get-enumerator
    System.Security.Permissions.KeyContainerPermissionAccessEntryCollection
    GetEnumerator
    (System.Security.Permissions.KeyContainerPermissionAccessEntryEnumerator))
  (define-method-port
    add
    System.Security.Permissions.KeyContainerPermissionAccessEntryCollection
    Add
    (System.Int32
      System.Security.Permissions.KeyContainerPermissionAccessEntry))
  (define-method-port
    remove
    System.Security.Permissions.KeyContainerPermissionAccessEntryCollection
    Remove
    (System.Void
      System.Security.Permissions.KeyContainerPermissionAccessEntry))
  (define-method-port
    clear
    System.Security.Permissions.KeyContainerPermissionAccessEntryCollection
    Clear
    (System.Void))
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Security.Permissions.KeyContainerPermissionAccessEntryCollection
    Count
    System.Int32)
  (define-field-port
    is-synchronized?
    #f
    #f
    (property:)
    System.Security.Permissions.KeyContainerPermissionAccessEntryCollection
    IsSynchronized
    System.Boolean)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Security.Permissions.KeyContainerPermissionAccessEntryCollection
    Item
    System.Security.Permissions.KeyContainerPermissionAccessEntry)
  (define-field-port
    sync-root
    #f
    #f
    (property:)
    System.Security.Permissions.KeyContainerPermissionAccessEntryCollection
    SyncRoot
    System.Object))