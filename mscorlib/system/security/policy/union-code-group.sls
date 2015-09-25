(library (system security policy union-code-group)
  (export new
          is?
          union-code-group?
          resolve
          resolve-matching-code-groups
          copy
          merge-logic)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Security.Policy.UnionCodeGroup a ...)))))
  (define (is? a) (clr-is System.Security.Policy.UnionCodeGroup a))
  (define (union-code-group? a)
    (clr-is System.Security.Policy.UnionCodeGroup a))
  (define-method-port
    resolve
    System.Security.Policy.UnionCodeGroup
    Resolve
    (System.Security.Policy.PolicyStatement
      System.Security.Policy.Evidence))
  (define-method-port
    resolve-matching-code-groups
    System.Security.Policy.UnionCodeGroup
    ResolveMatchingCodeGroups
    (System.Security.Policy.CodeGroup System.Security.Policy.Evidence))
  (define-method-port
    copy
    System.Security.Policy.UnionCodeGroup
    Copy
    (System.Security.Policy.CodeGroup))
  (define-field-port
    merge-logic
    #f
    #f
    (property:)
    System.Security.Policy.UnionCodeGroup
    MergeLogic
    System.String))
