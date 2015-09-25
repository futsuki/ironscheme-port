(library (system security permission-set)
  (export new
          is?
          permission-set?
          get-hash-code
          get-permission
          union
          convert-permission-set
          from-xml
          assert
          is-subset-of?
          permit-only
          equals?
          is-empty?
          get-enumerator
          deny
          remove-permission
          to-xml
          add-permission
          revert-assert
          is-unrestricted?
          copy-to
          copy
          to-string
          intersect
          contains-non-code-access-permissions?
          demand
          set-permission
          count
          is-synchronized?
          is-read-only?
          sync-root)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Security.PermissionSet a ...)))))
  (define (is? a) (clr-is System.Security.PermissionSet a))
  (define (permission-set? a) (clr-is System.Security.PermissionSet a))
  (define-method-port
    get-hash-code
    System.Security.PermissionSet
    GetHashCode
    (System.Int32))
  (define-method-port
    get-permission
    System.Security.PermissionSet
    GetPermission
    (System.Security.IPermission System.Type))
  (define-method-port
    union
    System.Security.PermissionSet
    Union
    (System.Security.PermissionSet System.Security.PermissionSet))
  (define-method-port
    convert-permission-set
    System.Security.PermissionSet
    ConvertPermissionSet
    (static: System.Byte[] System.String System.Byte[] System.String))
  (define-method-port
    from-xml
    System.Security.PermissionSet
    FromXml
    (System.Void System.Security.SecurityElement))
  (define-method-port
    assert
    System.Security.PermissionSet
    Assert
    (System.Void))
  (define-method-port
    is-subset-of?
    System.Security.PermissionSet
    IsSubsetOf
    (System.Boolean System.Security.PermissionSet))
  (define-method-port
    permit-only
    System.Security.PermissionSet
    PermitOnly
    (System.Void))
  (define-method-port
    equals?
    System.Security.PermissionSet
    Equals
    (System.Boolean System.Object))
  (define-method-port
    is-empty?
    System.Security.PermissionSet
    IsEmpty
    (System.Boolean))
  (define-method-port
    get-enumerator
    System.Security.PermissionSet
    GetEnumerator
    (System.Collections.IEnumerator))
  (define-method-port
    deny
    System.Security.PermissionSet
    Deny
    (System.Void))
  (define-method-port
    remove-permission
    System.Security.PermissionSet
    RemovePermission
    (System.Security.IPermission System.Type))
  (define-method-port
    to-xml
    System.Security.PermissionSet
    ToXml
    (System.Security.SecurityElement))
  (define-method-port
    add-permission
    System.Security.PermissionSet
    AddPermission
    (System.Security.IPermission System.Security.IPermission))
  (define-method-port
    revert-assert
    System.Security.PermissionSet
    RevertAssert
    (static: System.Void))
  (define-method-port
    is-unrestricted?
    System.Security.PermissionSet
    IsUnrestricted
    (System.Boolean))
  (define-method-port
    copy-to
    System.Security.PermissionSet
    CopyTo
    (System.Void System.Array System.Int32))
  (define-method-port
    copy
    System.Security.PermissionSet
    Copy
    (System.Security.PermissionSet))
  (define-method-port
    to-string
    System.Security.PermissionSet
    ToString
    (System.String))
  (define-method-port
    intersect
    System.Security.PermissionSet
    Intersect
    (System.Security.PermissionSet System.Security.PermissionSet))
  (define-method-port
    contains-non-code-access-permissions?
    System.Security.PermissionSet
    ContainsNonCodeAccessPermissions
    (System.Boolean))
  (define-method-port
    demand
    System.Security.PermissionSet
    Demand
    (System.Void))
  (define-method-port
    set-permission
    System.Security.PermissionSet
    SetPermission
    (System.Security.IPermission System.Security.IPermission))
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Security.PermissionSet
    Count
    System.Int32)
  (define-field-port
    is-synchronized?
    #f
    #f
    (property:)
    System.Security.PermissionSet
    IsSynchronized
    System.Boolean)
  (define-field-port
    is-read-only?
    #f
    #f
    (property:)
    System.Security.PermissionSet
    IsReadOnly
    System.Boolean)
  (define-field-port
    sync-root
    #f
    #f
    (property:)
    System.Security.PermissionSet
    SyncRoot
    System.Object))
