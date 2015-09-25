(library (system security policy url)
  (export new
          is?
          url?
          get-hash-code
          to-string
          create-identity-permission
          copy
          equals?
          value)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Security.Policy.Url a ...)))))
  (define (is? a) (clr-is System.Security.Policy.Url a))
  (define (url? a) (clr-is System.Security.Policy.Url a))
  (define-method-port
    get-hash-code
    System.Security.Policy.Url
    GetHashCode
    (System.Int32))
  (define-method-port
    to-string
    System.Security.Policy.Url
    ToString
    (System.String))
  (define-method-port
    create-identity-permission
    System.Security.Policy.Url
    CreateIdentityPermission
    (System.Security.IPermission System.Security.Policy.Evidence))
  (define-method-port
    copy
    System.Security.Policy.Url
    Copy
    (System.Object))
  (define-method-port
    equals?
    System.Security.Policy.Url
    Equals
    (System.Boolean System.Object))
  (define-field-port
    value
    #f
    #f
    (property:)
    System.Security.Policy.Url
    Value
    System.String))
