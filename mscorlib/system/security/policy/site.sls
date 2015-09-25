(library (system security policy site)
  (export new
          is?
          site?
          get-hash-code
          to-string
          create-from-url
          create-identity-permission
          copy
          equals?
          name)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Security.Policy.Site a ...)))))
  (define (is? a) (clr-is System.Security.Policy.Site a))
  (define (site? a) (clr-is System.Security.Policy.Site a))
  (define-method-port
    get-hash-code
    System.Security.Policy.Site
    GetHashCode
    (System.Int32))
  (define-method-port
    to-string
    System.Security.Policy.Site
    ToString
    (System.String))
  (define-method-port
    create-from-url
    System.Security.Policy.Site
    CreateFromUrl
    (static: System.Security.Policy.Site System.String))
  (define-method-port
    create-identity-permission
    System.Security.Policy.Site
    CreateIdentityPermission
    (System.Security.IPermission System.Security.Policy.Evidence))
  (define-method-port
    copy
    System.Security.Policy.Site
    Copy
    (System.Object))
  (define-method-port
    equals?
    System.Security.Policy.Site
    Equals
    (System.Boolean System.Object))
  (define-field-port
    name
    #f
    #f
    (property:)
    System.Security.Policy.Site
    Name
    System.String))
