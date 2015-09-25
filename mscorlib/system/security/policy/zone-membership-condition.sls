(library (system security policy zone-membership-condition)
  (export new
          is?
          zone-membership-condition?
          get-hash-code
          from-xml
          check?
          to-string
          to-xml
          copy
          equals?
          security-zone-get
          security-zone-set!
          security-zone-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Policy.ZoneMembershipCondition
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.Policy.ZoneMembershipCondition a))
  (define (zone-membership-condition? a)
    (clr-is System.Security.Policy.ZoneMembershipCondition a))
  (define-method-port
    get-hash-code
    System.Security.Policy.ZoneMembershipCondition
    GetHashCode
    (System.Int32))
  (define-method-port
    from-xml
    System.Security.Policy.ZoneMembershipCondition
    FromXml
    (System.Void
      System.Security.SecurityElement
      System.Security.Policy.PolicyLevel)
    (System.Void System.Security.SecurityElement))
  (define-method-port
    check?
    System.Security.Policy.ZoneMembershipCondition
    Check
    (System.Boolean System.Security.Policy.Evidence))
  (define-method-port
    to-string
    System.Security.Policy.ZoneMembershipCondition
    ToString
    (System.String))
  (define-method-port
    to-xml
    System.Security.Policy.ZoneMembershipCondition
    ToXml
    (System.Security.SecurityElement System.Security.Policy.PolicyLevel)
    (System.Security.SecurityElement))
  (define-method-port
    copy
    System.Security.Policy.ZoneMembershipCondition
    Copy
    (System.Security.Policy.IMembershipCondition))
  (define-method-port
    equals?
    System.Security.Policy.ZoneMembershipCondition
    Equals
    (System.Boolean System.Object))
  (define-field-port
    security-zone-get
    security-zone-set!
    security-zone-update!
    (property:)
    System.Security.Policy.ZoneMembershipCondition
    SecurityZone
    System.Security.SecurityZone))
