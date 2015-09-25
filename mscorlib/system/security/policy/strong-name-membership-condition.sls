(library (system security policy strong-name-membership-condition)
  (export new
          is?
          strong-name-membership-condition?
          get-hash-code
          from-xml
          check?
          to-string
          to-xml
          copy
          equals?
          name-get
          name-set!
          name-update!
          version-get
          version-set!
          version-update!
          public-key-get
          public-key-set!
          public-key-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Policy.StrongNameMembershipCondition
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.Policy.StrongNameMembershipCondition a))
  (define (strong-name-membership-condition? a)
    (clr-is System.Security.Policy.StrongNameMembershipCondition a))
  (define-method-port
    get-hash-code
    System.Security.Policy.StrongNameMembershipCondition
    GetHashCode
    (System.Int32))
  (define-method-port
    from-xml
    System.Security.Policy.StrongNameMembershipCondition
    FromXml
    (System.Void
      System.Security.SecurityElement
      System.Security.Policy.PolicyLevel)
    (System.Void System.Security.SecurityElement))
  (define-method-port
    check?
    System.Security.Policy.StrongNameMembershipCondition
    Check
    (System.Boolean System.Security.Policy.Evidence))
  (define-method-port
    to-string
    System.Security.Policy.StrongNameMembershipCondition
    ToString
    (System.String))
  (define-method-port
    to-xml
    System.Security.Policy.StrongNameMembershipCondition
    ToXml
    (System.Security.SecurityElement System.Security.Policy.PolicyLevel)
    (System.Security.SecurityElement))
  (define-method-port
    copy
    System.Security.Policy.StrongNameMembershipCondition
    Copy
    (System.Security.Policy.IMembershipCondition))
  (define-method-port
    equals?
    System.Security.Policy.StrongNameMembershipCondition
    Equals
    (System.Boolean System.Object))
  (define-field-port
    name-get
    name-set!
    name-update!
    (property:)
    System.Security.Policy.StrongNameMembershipCondition
    Name
    System.String)
  (define-field-port
    version-get
    version-set!
    version-update!
    (property:)
    System.Security.Policy.StrongNameMembershipCondition
    Version
    System.Version)
  (define-field-port
    public-key-get
    public-key-set!
    public-key-update!
    (property:)
    System.Security.Policy.StrongNameMembershipCondition
    PublicKey
    System.Security.Permissions.StrongNamePublicKeyBlob))
