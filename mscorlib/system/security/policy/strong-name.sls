(library (system security policy strong-name)
  (export new
          is?
          strong-name?
          get-hash-code
          to-string
          create-identity-permission
          copy
          equals?
          name
          public-key
          version)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Security.Policy.StrongName a ...)))))
  (define (is? a) (clr-is System.Security.Policy.StrongName a))
  (define (strong-name? a) (clr-is System.Security.Policy.StrongName a))
  (define-method-port
    get-hash-code
    System.Security.Policy.StrongName
    GetHashCode
    (System.Int32))
  (define-method-port
    to-string
    System.Security.Policy.StrongName
    ToString
    (System.String))
  (define-method-port
    create-identity-permission
    System.Security.Policy.StrongName
    CreateIdentityPermission
    (System.Security.IPermission System.Security.Policy.Evidence))
  (define-method-port
    copy
    System.Security.Policy.StrongName
    Copy
    (System.Object))
  (define-method-port
    equals?
    System.Security.Policy.StrongName
    Equals
    (System.Boolean System.Object))
  (define-field-port
    name
    #f
    #f
    (property:)
    System.Security.Policy.StrongName
    Name
    System.String)
  (define-field-port
    public-key
    #f
    #f
    (property:)
    System.Security.Policy.StrongName
    PublicKey
    System.Security.Permissions.StrongNamePublicKeyBlob)
  (define-field-port
    version
    #f
    #f
    (property:)
    System.Security.Policy.StrongName
    Version
    System.Version))
