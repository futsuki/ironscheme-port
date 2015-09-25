(library (system security policy publisher-membership-condition)
  (export new
          is?
          publisher-membership-condition?
          get-hash-code
          from-xml
          check?
          to-string
          to-xml
          copy
          equals?
          certificate-get
          certificate-set!
          certificate-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Policy.PublisherMembershipCondition
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.Policy.PublisherMembershipCondition a))
  (define (publisher-membership-condition? a)
    (clr-is System.Security.Policy.PublisherMembershipCondition a))
  (define-method-port
    get-hash-code
    System.Security.Policy.PublisherMembershipCondition
    GetHashCode
    (System.Int32))
  (define-method-port
    from-xml
    System.Security.Policy.PublisherMembershipCondition
    FromXml
    (System.Void
      System.Security.SecurityElement
      System.Security.Policy.PolicyLevel)
    (System.Void System.Security.SecurityElement))
  (define-method-port
    check?
    System.Security.Policy.PublisherMembershipCondition
    Check
    (System.Boolean System.Security.Policy.Evidence))
  (define-method-port
    to-string
    System.Security.Policy.PublisherMembershipCondition
    ToString
    (System.String))
  (define-method-port
    to-xml
    System.Security.Policy.PublisherMembershipCondition
    ToXml
    (System.Security.SecurityElement System.Security.Policy.PolicyLevel)
    (System.Security.SecurityElement))
  (define-method-port
    copy
    System.Security.Policy.PublisherMembershipCondition
    Copy
    (System.Security.Policy.IMembershipCondition))
  (define-method-port
    equals?
    System.Security.Policy.PublisherMembershipCondition
    Equals
    (System.Boolean System.Object))
  (define-field-port
    certificate-get
    certificate-set!
    certificate-update!
    (property:)
    System.Security.Policy.PublisherMembershipCondition
    Certificate
    System.Security.Cryptography.X509Certificates.X509Certificate))
