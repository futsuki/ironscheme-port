(library (system security policy site-membership-condition)
  (export new
          is?
          site-membership-condition?
          get-hash-code
          from-xml
          check?
          to-string
          to-xml
          copy
          equals?
          site-get
          site-set!
          site-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Policy.SiteMembershipCondition
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.Policy.SiteMembershipCondition a))
  (define (site-membership-condition? a)
    (clr-is System.Security.Policy.SiteMembershipCondition a))
  (define-method-port
    get-hash-code
    System.Security.Policy.SiteMembershipCondition
    GetHashCode
    (System.Int32))
  (define-method-port
    from-xml
    System.Security.Policy.SiteMembershipCondition
    FromXml
    (System.Void
      System.Security.SecurityElement
      System.Security.Policy.PolicyLevel)
    (System.Void System.Security.SecurityElement))
  (define-method-port
    check?
    System.Security.Policy.SiteMembershipCondition
    Check
    (System.Boolean System.Security.Policy.Evidence))
  (define-method-port
    to-string
    System.Security.Policy.SiteMembershipCondition
    ToString
    (System.String))
  (define-method-port
    to-xml
    System.Security.Policy.SiteMembershipCondition
    ToXml
    (System.Security.SecurityElement System.Security.Policy.PolicyLevel)
    (System.Security.SecurityElement))
  (define-method-port
    copy
    System.Security.Policy.SiteMembershipCondition
    Copy
    (System.Security.Policy.IMembershipCondition))
  (define-method-port
    equals?
    System.Security.Policy.SiteMembershipCondition
    Equals
    (System.Boolean System.Object))
  (define-field-port
    site-get
    site-set!
    site-update!
    (property:)
    System.Security.Policy.SiteMembershipCondition
    Site
    System.String))
