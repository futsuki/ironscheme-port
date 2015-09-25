(library (system security policy publisher)
  (export new
          is?
          publisher?
          get-hash-code
          to-string
          create-identity-permission
          copy
          equals?
          certificate)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Security.Policy.Publisher a ...)))))
  (define (is? a) (clr-is System.Security.Policy.Publisher a))
  (define (publisher? a) (clr-is System.Security.Policy.Publisher a))
  (define-method-port
    get-hash-code
    System.Security.Policy.Publisher
    GetHashCode
    (System.Int32))
  (define-method-port
    to-string
    System.Security.Policy.Publisher
    ToString
    (System.String))
  (define-method-port
    create-identity-permission
    System.Security.Policy.Publisher
    CreateIdentityPermission
    (System.Security.IPermission System.Security.Policy.Evidence))
  (define-method-port
    copy
    System.Security.Policy.Publisher
    Copy
    (System.Object))
  (define-method-port
    equals?
    System.Security.Policy.Publisher
    Equals
    (System.Boolean System.Object))
  (define-field-port
    certificate
    #f
    #f
    (property:)
    System.Security.Policy.Publisher
    Certificate
    System.Security.Cryptography.X509Certificates.X509Certificate))
