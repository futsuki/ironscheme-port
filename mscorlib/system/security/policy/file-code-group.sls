(library (system security policy file-code-group)
  (export new
          is?
          file-code-group?
          get-hash-code
          resolve
          resolve-matching-code-groups
          copy
          equals?
          merge-logic
          attribute-string
          permission-set-name)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Security.Policy.FileCodeGroup a ...)))))
  (define (is? a) (clr-is System.Security.Policy.FileCodeGroup a))
  (define (file-code-group? a)
    (clr-is System.Security.Policy.FileCodeGroup a))
  (define-method-port
    get-hash-code
    System.Security.Policy.FileCodeGroup
    GetHashCode
    (System.Int32))
  (define-method-port
    resolve
    System.Security.Policy.FileCodeGroup
    Resolve
    (System.Security.Policy.PolicyStatement
      System.Security.Policy.Evidence))
  (define-method-port
    resolve-matching-code-groups
    System.Security.Policy.FileCodeGroup
    ResolveMatchingCodeGroups
    (System.Security.Policy.CodeGroup System.Security.Policy.Evidence))
  (define-method-port
    copy
    System.Security.Policy.FileCodeGroup
    Copy
    (System.Security.Policy.CodeGroup))
  (define-method-port
    equals?
    System.Security.Policy.FileCodeGroup
    Equals
    (System.Boolean System.Object))
  (define-field-port
    merge-logic
    #f
    #f
    (property:)
    System.Security.Policy.FileCodeGroup
    MergeLogic
    System.String)
  (define-field-port
    attribute-string
    #f
    #f
    (property:)
    System.Security.Policy.FileCodeGroup
    AttributeString
    System.String)
  (define-field-port
    permission-set-name
    #f
    #f
    (property:)
    System.Security.Policy.FileCodeGroup
    PermissionSetName
    System.String))
