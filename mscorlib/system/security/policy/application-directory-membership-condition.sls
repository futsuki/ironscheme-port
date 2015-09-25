(library (system
          security
          policy
          application-directory-membership-condition)
  (export new
          is?
          application-directory-membership-condition?
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
             System.Security.Policy.ApplicationDirectoryMembershipCondition
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Security.Policy.ApplicationDirectoryMembershipCondition
      a))
  (define (application-directory-membership-condition? a)
    (clr-is
      System.Security.Policy.ApplicationDirectoryMembershipCondition
      a))
  (define-method-port
    get-hash-code
    System.Security.Policy.ApplicationDirectoryMembershipCondition
    GetHashCode
    (System.Int32))
  (define-method-port
    from-xml
    System.Security.Policy.ApplicationDirectoryMembershipCondition
    FromXml
    (System.Void
      System.Security.SecurityElement
      System.Security.Policy.PolicyLevel)
    (System.Void System.Security.SecurityElement))
  (define-method-port
    check?
    System.Security.Policy.ApplicationDirectoryMembershipCondition
    Check
    (System.Boolean System.Security.Policy.Evidence))
  (define-method-port
    to-string
    System.Security.Policy.ApplicationDirectoryMembershipCondition
    ToString
    (System.String))
  (define-method-port
    to-xml
    System.Security.Policy.ApplicationDirectoryMembershipCondition
    ToXml
    (System.Security.SecurityElement System.Security.Policy.PolicyLevel)
    (System.Security.SecurityElement))
  (define-method-port
    copy
    System.Security.Policy.ApplicationDirectoryMembershipCondition
    Copy
    (System.Security.Policy.IMembershipCondition))
  (define-method-port
    equals?
    System.Security.Policy.ApplicationDirectoryMembershipCondition
    Equals
    (System.Boolean System.Object)))
