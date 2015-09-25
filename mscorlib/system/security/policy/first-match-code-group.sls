(library (system security policy first-match-code-group)
  (export new
          is?
          first-match-code-group?
          resolve
          resolve-matching-code-groups
          copy
          merge-logic)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Policy.FirstMatchCodeGroup
             a
             ...)))))
  (define (is? a) (clr-is System.Security.Policy.FirstMatchCodeGroup a))
  (define (first-match-code-group? a)
    (clr-is System.Security.Policy.FirstMatchCodeGroup a))
  (define-method-port
    resolve
    System.Security.Policy.FirstMatchCodeGroup
    Resolve
    (System.Security.Policy.PolicyStatement
      System.Security.Policy.Evidence))
  (define-method-port
    resolve-matching-code-groups
    System.Security.Policy.FirstMatchCodeGroup
    ResolveMatchingCodeGroups
    (System.Security.Policy.CodeGroup System.Security.Policy.Evidence))
  (define-method-port
    copy
    System.Security.Policy.FirstMatchCodeGroup
    Copy
    (System.Security.Policy.CodeGroup))
  (define-field-port
    merge-logic
    #f
    #f
    (property:)
    System.Security.Policy.FirstMatchCodeGroup
    MergeLogic
    System.String))
