(library (system security policy hash-membership-condition)
  (export new
          is?
          hash-membership-condition?
          get-hash-code
          from-xml
          check?
          to-string
          to-xml
          copy
          equals?
          hash-algorithm-get
          hash-algorithm-set!
          hash-algorithm-update!
          hash-value-get
          hash-value-set!
          hash-value-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Policy.HashMembershipCondition
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.Policy.HashMembershipCondition a))
  (define (hash-membership-condition? a)
    (clr-is System.Security.Policy.HashMembershipCondition a))
  (define-method-port
    get-hash-code
    System.Security.Policy.HashMembershipCondition
    GetHashCode
    (System.Int32))
  (define-method-port
    from-xml
    System.Security.Policy.HashMembershipCondition
    FromXml
    (System.Void
      System.Security.SecurityElement
      System.Security.Policy.PolicyLevel)
    (System.Void System.Security.SecurityElement))
  (define-method-port
    check?
    System.Security.Policy.HashMembershipCondition
    Check
    (System.Boolean System.Security.Policy.Evidence))
  (define-method-port
    to-string
    System.Security.Policy.HashMembershipCondition
    ToString
    (System.String))
  (define-method-port
    to-xml
    System.Security.Policy.HashMembershipCondition
    ToXml
    (System.Security.SecurityElement System.Security.Policy.PolicyLevel)
    (System.Security.SecurityElement))
  (define-method-port
    copy
    System.Security.Policy.HashMembershipCondition
    Copy
    (System.Security.Policy.IMembershipCondition))
  (define-method-port
    equals?
    System.Security.Policy.HashMembershipCondition
    Equals
    (System.Boolean System.Object))
  (define-field-port
    hash-algorithm-get
    hash-algorithm-set!
    hash-algorithm-update!
    (property:)
    System.Security.Policy.HashMembershipCondition
    HashAlgorithm
    System.Security.Cryptography.HashAlgorithm)
  (define-field-port
    hash-value-get
    hash-value-set!
    hash-value-update!
    (property:)
    System.Security.Policy.HashMembershipCondition
    HashValue
    System.Byte[]))
