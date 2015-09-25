(library (system security policy url-membership-condition)
  (export new
          is?
          url-membership-condition?
          get-hash-code
          from-xml
          check?
          to-string
          to-xml
          copy
          equals?
          url-get
          url-set!
          url-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Policy.UrlMembershipCondition
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.Policy.UrlMembershipCondition a))
  (define (url-membership-condition? a)
    (clr-is System.Security.Policy.UrlMembershipCondition a))
  (define-method-port
    get-hash-code
    System.Security.Policy.UrlMembershipCondition
    GetHashCode
    (System.Int32))
  (define-method-port
    from-xml
    System.Security.Policy.UrlMembershipCondition
    FromXml
    (System.Void
      System.Security.SecurityElement
      System.Security.Policy.PolicyLevel)
    (System.Void System.Security.SecurityElement))
  (define-method-port
    check?
    System.Security.Policy.UrlMembershipCondition
    Check
    (System.Boolean System.Security.Policy.Evidence))
  (define-method-port
    to-string
    System.Security.Policy.UrlMembershipCondition
    ToString
    (System.String))
  (define-method-port
    to-xml
    System.Security.Policy.UrlMembershipCondition
    ToXml
    (System.Security.SecurityElement System.Security.Policy.PolicyLevel)
    (System.Security.SecurityElement))
  (define-method-port
    copy
    System.Security.Policy.UrlMembershipCondition
    Copy
    (System.Security.Policy.IMembershipCondition))
  (define-method-port
    equals?
    System.Security.Policy.UrlMembershipCondition
    Equals
    (System.Boolean System.Object))
  (define-field-port
    url-get
    url-set!
    url-update!
    (property:)
    System.Security.Policy.UrlMembershipCondition
    Url
    System.String))
