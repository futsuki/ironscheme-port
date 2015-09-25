(library (system security principal windows-identity)
  (export new
          is?
          windows-identity?
          impersonate
          dispose
          get-anonymous
          get-current
          authentication-type
          is-anonymous?
          is-authenticated?
          is-guest?
          is-system?
          name
          token
          groups
          impersonation-level
          owner
          user)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Security.Principal.WindowsIdentity a ...)))))
  (define (is? a) (clr-is System.Security.Principal.WindowsIdentity a))
  (define (windows-identity? a)
    (clr-is System.Security.Principal.WindowsIdentity a))
  (define-method-port
    impersonate
    System.Security.Principal.WindowsIdentity
    Impersonate
    (static:
      System.Security.Principal.WindowsImpersonationContext
      System.IntPtr)
    (System.Security.Principal.WindowsImpersonationContext))
  (define-method-port
    dispose
    System.Security.Principal.WindowsIdentity
    Dispose
    (System.Void))
  (define-method-port
    get-anonymous
    System.Security.Principal.WindowsIdentity
    GetAnonymous
    (static: System.Security.Principal.WindowsIdentity))
  (define-method-port
    get-current
    System.Security.Principal.WindowsIdentity
    GetCurrent
    (static:
      System.Security.Principal.WindowsIdentity
      System.Security.Principal.TokenAccessLevels)
    (static: System.Security.Principal.WindowsIdentity System.Boolean)
    (static: System.Security.Principal.WindowsIdentity))
  (define-field-port
    authentication-type
    #f
    #f
    (property:)
    System.Security.Principal.WindowsIdentity
    AuthenticationType
    System.String)
  (define-field-port
    is-anonymous?
    #f
    #f
    (property:)
    System.Security.Principal.WindowsIdentity
    IsAnonymous
    System.Boolean)
  (define-field-port
    is-authenticated?
    #f
    #f
    (property:)
    System.Security.Principal.WindowsIdentity
    IsAuthenticated
    System.Boolean)
  (define-field-port
    is-guest?
    #f
    #f
    (property:)
    System.Security.Principal.WindowsIdentity
    IsGuest
    System.Boolean)
  (define-field-port
    is-system?
    #f
    #f
    (property:)
    System.Security.Principal.WindowsIdentity
    IsSystem
    System.Boolean)
  (define-field-port
    name
    #f
    #f
    (property:)
    System.Security.Principal.WindowsIdentity
    Name
    System.String)
  (define-field-port
    token
    #f
    #f
    (property:)
    System.Security.Principal.WindowsIdentity
    Token
    System.IntPtr)
  (define-field-port
    groups
    #f
    #f
    (property:)
    System.Security.Principal.WindowsIdentity
    Groups
    System.Security.Principal.IdentityReferenceCollection)
  (define-field-port
    impersonation-level
    #f
    #f
    (property:)
    System.Security.Principal.WindowsIdentity
    ImpersonationLevel
    System.Security.Principal.TokenImpersonationLevel)
  (define-field-port
    owner
    #f
    #f
    (property:)
    System.Security.Principal.WindowsIdentity
    Owner
    System.Security.Principal.SecurityIdentifier)
  (define-field-port
    user
    #f
    #f
    (property:)
    System.Security.Principal.WindowsIdentity
    User
    System.Security.Principal.SecurityIdentifier))
