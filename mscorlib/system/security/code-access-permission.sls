(library (system security code-access-permission)
  (export is?
          code-access-permission?
          get-hash-code
          revert-all
          union
          from-xml
          assert
          is-subset-of?
          to-string
          permit-only
          deny
          to-xml
          revert-permit-only
          revert-assert
          revert-deny
          copy
          equals?
          intersect
          demand)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Security.CodeAccessPermission a))
  (define (code-access-permission? a)
    (clr-is System.Security.CodeAccessPermission a))
  (define-method-port
    get-hash-code
    System.Security.CodeAccessPermission
    GetHashCode
    (System.Int32))
  (define-method-port
    revert-all
    System.Security.CodeAccessPermission
    RevertAll
    (static: System.Void))
  (define-method-port
    union
    System.Security.CodeAccessPermission
    Union
    (System.Security.IPermission System.Security.IPermission))
  (define-method-port
    from-xml
    System.Security.CodeAccessPermission
    FromXml
    (System.Void System.Security.SecurityElement))
  (define-method-port
    assert
    System.Security.CodeAccessPermission
    Assert
    (System.Void))
  (define-method-port
    is-subset-of?
    System.Security.CodeAccessPermission
    IsSubsetOf
    (System.Boolean System.Security.IPermission))
  (define-method-port
    to-string
    System.Security.CodeAccessPermission
    ToString
    (System.String))
  (define-method-port
    permit-only
    System.Security.CodeAccessPermission
    PermitOnly
    (System.Void))
  (define-method-port
    deny
    System.Security.CodeAccessPermission
    Deny
    (System.Void))
  (define-method-port
    to-xml
    System.Security.CodeAccessPermission
    ToXml
    (System.Security.SecurityElement))
  (define-method-port
    revert-permit-only
    System.Security.CodeAccessPermission
    RevertPermitOnly
    (static: System.Void))
  (define-method-port
    revert-assert
    System.Security.CodeAccessPermission
    RevertAssert
    (static: System.Void))
  (define-method-port
    revert-deny
    System.Security.CodeAccessPermission
    RevertDeny
    (static: System.Void))
  (define-method-port
    copy
    System.Security.CodeAccessPermission
    Copy
    (System.Security.IPermission))
  (define-method-port
    equals?
    System.Security.CodeAccessPermission
    Equals
    (System.Boolean System.Object))
  (define-method-port
    intersect
    System.Security.CodeAccessPermission
    Intersect
    (System.Security.IPermission System.Security.IPermission))
  (define-method-port
    demand
    System.Security.CodeAccessPermission
    Demand
    (System.Void)))
