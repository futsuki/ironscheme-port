(library (system security policy policy-statement)
  (export new
          is?
          policy-statement?
          get-hash-code
          from-xml
          to-xml
          copy
          equals?
          permission-set-get
          permission-set-set!
          permission-set-update!
          attributes-get
          attributes-set!
          attributes-update!
          attribute-string)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Security.Policy.PolicyStatement a ...)))))
  (define (is? a) (clr-is System.Security.Policy.PolicyStatement a))
  (define (policy-statement? a)
    (clr-is System.Security.Policy.PolicyStatement a))
  (define-method-port
    get-hash-code
    System.Security.Policy.PolicyStatement
    GetHashCode
    (System.Int32))
  (define-method-port
    from-xml
    System.Security.Policy.PolicyStatement
    FromXml
    (System.Void
      System.Security.SecurityElement
      System.Security.Policy.PolicyLevel)
    (System.Void System.Security.SecurityElement))
  (define-method-port
    to-xml
    System.Security.Policy.PolicyStatement
    ToXml
    (System.Security.SecurityElement System.Security.Policy.PolicyLevel)
    (System.Security.SecurityElement))
  (define-method-port
    copy
    System.Security.Policy.PolicyStatement
    Copy
    (System.Security.Policy.PolicyStatement))
  (define-method-port
    equals?
    System.Security.Policy.PolicyStatement
    Equals
    (System.Boolean System.Object))
  (define-field-port
    permission-set-get
    permission-set-set!
    permission-set-update!
    (property:)
    System.Security.Policy.PolicyStatement
    PermissionSet
    System.Security.PermissionSet)
  (define-field-port
    attributes-get
    attributes-set!
    attributes-update!
    (property:)
    System.Security.Policy.PolicyStatement
    Attributes
    System.Security.Policy.PolicyStatementAttribute)
  (define-field-port
    attribute-string
    #f
    #f
    (property:)
    System.Security.Policy.PolicyStatement
    AttributeString
    System.String))
