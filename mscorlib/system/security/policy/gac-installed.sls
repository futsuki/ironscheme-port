(library (system security policy gac-installed)
  (export new
          is?
          gac-installed?
          get-hash-code
          to-string
          create-identity-permission
          copy
          equals?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Security.Policy.GacInstalled a ...)))))
  (define (is? a) (clr-is System.Security.Policy.GacInstalled a))
  (define (gac-installed? a)
    (clr-is System.Security.Policy.GacInstalled a))
  (define-method-port
    get-hash-code
    System.Security.Policy.GacInstalled
    GetHashCode
    (System.Int32))
  (define-method-port
    to-string
    System.Security.Policy.GacInstalled
    ToString
    (System.String))
  (define-method-port
    create-identity-permission
    System.Security.Policy.GacInstalled
    CreateIdentityPermission
    (System.Security.IPermission System.Security.Policy.Evidence))
  (define-method-port
    copy
    System.Security.Policy.GacInstalled
    Copy
    (System.Object))
  (define-method-port
    equals?
    System.Security.Policy.GacInstalled
    Equals
    (System.Boolean System.Object)))
