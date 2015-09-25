(library (system security policy code-connect-access)
  (export new
          is?
          code-connect-access?
          get-hash-code
          create-any-scheme-access
          create-origin-scheme-access
          equals?
          any-scheme
          default-port
          origin-port
          origin-scheme
          port
          scheme)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Security.Policy.CodeConnectAccess a ...)))))
  (define (is? a) (clr-is System.Security.Policy.CodeConnectAccess a))
  (define (code-connect-access? a)
    (clr-is System.Security.Policy.CodeConnectAccess a))
  (define-method-port
    get-hash-code
    System.Security.Policy.CodeConnectAccess
    GetHashCode
    (System.Int32))
  (define-method-port
    create-any-scheme-access
    System.Security.Policy.CodeConnectAccess
    CreateAnySchemeAccess
    (static: System.Security.Policy.CodeConnectAccess System.Int32))
  (define-method-port
    create-origin-scheme-access
    System.Security.Policy.CodeConnectAccess
    CreateOriginSchemeAccess
    (static: System.Security.Policy.CodeConnectAccess System.Int32))
  (define-method-port
    equals?
    System.Security.Policy.CodeConnectAccess
    Equals
    (System.Boolean System.Object))
  (define-field-port
    any-scheme
    #f
    #f
    (static:)
    System.Security.Policy.CodeConnectAccess
    AnyScheme
    System.String)
  (define-field-port
    default-port
    #f
    #f
    (static:)
    System.Security.Policy.CodeConnectAccess
    DefaultPort
    System.Int32)
  (define-field-port
    origin-port
    #f
    #f
    (static:)
    System.Security.Policy.CodeConnectAccess
    OriginPort
    System.Int32)
  (define-field-port
    origin-scheme
    #f
    #f
    (static:)
    System.Security.Policy.CodeConnectAccess
    OriginScheme
    System.String)
  (define-field-port
    port
    #f
    #f
    (property:)
    System.Security.Policy.CodeConnectAccess
    Port
    System.Int32)
  (define-field-port
    scheme
    #f
    #f
    (property:)
    System.Security.Policy.CodeConnectAccess
    Scheme
    System.String))
