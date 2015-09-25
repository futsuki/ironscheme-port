(library (system security policy zone)
  (export new
          is?
          zone?
          get-hash-code
          to-string
          create-from-url
          create-identity-permission
          copy
          equals?
          security-zone)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Security.Policy.Zone a ...)))))
  (define (is? a) (clr-is System.Security.Policy.Zone a))
  (define (zone? a) (clr-is System.Security.Policy.Zone a))
  (define-method-port
    get-hash-code
    System.Security.Policy.Zone
    GetHashCode
    (System.Int32))
  (define-method-port
    to-string
    System.Security.Policy.Zone
    ToString
    (System.String))
  (define-method-port
    create-from-url
    System.Security.Policy.Zone
    CreateFromUrl
    (static: System.Security.Policy.Zone System.String))
  (define-method-port
    create-identity-permission
    System.Security.Policy.Zone
    CreateIdentityPermission
    (System.Security.IPermission System.Security.Policy.Evidence))
  (define-method-port
    copy
    System.Security.Policy.Zone
    Copy
    (System.Object))
  (define-method-port
    equals?
    System.Security.Policy.Zone
    Equals
    (System.Boolean System.Object))
  (define-field-port
    security-zone
    #f
    #f
    (property:)
    System.Security.Policy.Zone
    SecurityZone
    System.Security.SecurityZone))
