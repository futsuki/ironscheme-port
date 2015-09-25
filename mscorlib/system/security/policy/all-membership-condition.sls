(library (system security policy all-membership-condition)
  (export new
          is?
          all-membership-condition?
          get-hash-code
          from-xml
          check?
          to-string
          to-xml
          copy
          equals?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Policy.AllMembershipCondition
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.Policy.AllMembershipCondition a))
  (define (all-membership-condition? a)
    (clr-is System.Security.Policy.AllMembershipCondition a))
  (define-method-port
    get-hash-code
    System.Security.Policy.AllMembershipCondition
    GetHashCode
    (System.Int32))
  (define-method-port
    from-xml
    System.Security.Policy.AllMembershipCondition
    FromXml
    (System.Void
      System.Security.SecurityElement
      System.Security.Policy.PolicyLevel)
    (System.Void System.Security.SecurityElement))
  (define-method-port
    check?
    System.Security.Policy.AllMembershipCondition
    Check
    (System.Boolean System.Security.Policy.Evidence))
  (define-method-port
    to-string
    System.Security.Policy.AllMembershipCondition
    ToString
    (System.String))
  (define-method-port
    to-xml
    System.Security.Policy.AllMembershipCondition
    ToXml
    (System.Security.SecurityElement System.Security.Policy.PolicyLevel)
    (System.Security.SecurityElement))
  (define-method-port
    copy
    System.Security.Policy.AllMembershipCondition
    Copy
    (System.Security.Policy.IMembershipCondition))
  (define-method-port
    equals?
    System.Security.Policy.AllMembershipCondition
    Equals
    (System.Boolean System.Object)))
