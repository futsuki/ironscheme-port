(library (system security policy gac-membership-condition)
  (export new
          is?
          gac-membership-condition?
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
             System.Security.Policy.GacMembershipCondition
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.Policy.GacMembershipCondition a))
  (define (gac-membership-condition? a)
    (clr-is System.Security.Policy.GacMembershipCondition a))
  (define-method-port
    get-hash-code
    System.Security.Policy.GacMembershipCondition
    GetHashCode
    (System.Int32))
  (define-method-port
    from-xml
    System.Security.Policy.GacMembershipCondition
    FromXml
    (System.Void
      System.Security.SecurityElement
      System.Security.Policy.PolicyLevel)
    (System.Void System.Security.SecurityElement))
  (define-method-port
    check?
    System.Security.Policy.GacMembershipCondition
    Check
    (System.Boolean System.Security.Policy.Evidence))
  (define-method-port
    to-string
    System.Security.Policy.GacMembershipCondition
    ToString
    (System.String))
  (define-method-port
    to-xml
    System.Security.Policy.GacMembershipCondition
    ToXml
    (System.Security.SecurityElement System.Security.Policy.PolicyLevel)
    (System.Security.SecurityElement))
  (define-method-port
    copy
    System.Security.Policy.GacMembershipCondition
    Copy
    (System.Security.Policy.IMembershipCondition))
  (define-method-port
    equals?
    System.Security.Policy.GacMembershipCondition
    Equals
    (System.Boolean System.Object)))
