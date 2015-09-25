(library (system security policy net-code-group)
  (export new
          is?
          net-code-group?
          get-hash-code
          get-connect-access-rules
          add-connect-access
          resolve
          resolve-matching-code-groups
          copy
          equals?
          reset-connect-access
          absent-origin-scheme
          any-other-origin-scheme
          attribute-string
          merge-logic
          permission-set-name)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Security.Policy.NetCodeGroup a ...)))))
  (define (is? a) (clr-is System.Security.Policy.NetCodeGroup a))
  (define (net-code-group? a)
    (clr-is System.Security.Policy.NetCodeGroup a))
  (define-method-port
    get-hash-code
    System.Security.Policy.NetCodeGroup
    GetHashCode
    (System.Int32))
  (define-method-port
    get-connect-access-rules
    System.Security.Policy.NetCodeGroup
    GetConnectAccessRules
    (System.Collections.DictionaryEntry[]))
  (define-method-port
    add-connect-access
    System.Security.Policy.NetCodeGroup
    AddConnectAccess
    (System.Void
      System.String
      System.Security.Policy.CodeConnectAccess))
  (define-method-port
    resolve
    System.Security.Policy.NetCodeGroup
    Resolve
    (System.Security.Policy.PolicyStatement
      System.Security.Policy.Evidence))
  (define-method-port
    resolve-matching-code-groups
    System.Security.Policy.NetCodeGroup
    ResolveMatchingCodeGroups
    (System.Security.Policy.CodeGroup System.Security.Policy.Evidence))
  (define-method-port
    copy
    System.Security.Policy.NetCodeGroup
    Copy
    (System.Security.Policy.CodeGroup))
  (define-method-port
    equals?
    System.Security.Policy.NetCodeGroup
    Equals
    (System.Boolean System.Object))
  (define-method-port
    reset-connect-access
    System.Security.Policy.NetCodeGroup
    ResetConnectAccess
    (System.Void))
  (define-field-port
    absent-origin-scheme
    #f
    #f
    (static:)
    System.Security.Policy.NetCodeGroup
    AbsentOriginScheme
    System.String)
  (define-field-port
    any-other-origin-scheme
    #f
    #f
    (static:)
    System.Security.Policy.NetCodeGroup
    AnyOtherOriginScheme
    System.String)
  (define-field-port
    attribute-string
    #f
    #f
    (property:)
    System.Security.Policy.NetCodeGroup
    AttributeString
    System.String)
  (define-field-port
    merge-logic
    #f
    #f
    (property:)
    System.Security.Policy.NetCodeGroup
    MergeLogic
    System.String)
  (define-field-port
    permission-set-name
    #f
    #f
    (property:)
    System.Security.Policy.NetCodeGroup
    PermissionSetName
    System.String))
