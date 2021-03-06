(library (system security permissions security-permission-attribute)
  (export new
          is?
          security-permission-attribute?
          create-permission
          assertion?-get
          assertion?-set!
          assertion?-update!
          binding-redirects?-get
          binding-redirects?-set!
          binding-redirects?-update!
          control-app-domain?-get
          control-app-domain?-set!
          control-app-domain?-update!
          control-domain-policy?-get
          control-domain-policy?-set!
          control-domain-policy?-update!
          control-evidence?-get
          control-evidence?-set!
          control-evidence?-update!
          control-policy?-get
          control-policy?-set!
          control-policy?-update!
          control-principal?-get
          control-principal?-set!
          control-principal?-update!
          control-thread?-get
          control-thread?-set!
          control-thread?-update!
          execution?-get
          execution?-set!
          execution?-update!
          infrastructure?-get
          infrastructure?-set!
          infrastructure?-update!
          remoting-configuration?-get
          remoting-configuration?-set!
          remoting-configuration?-update!
          serialization-formatter?-get
          serialization-formatter?-set!
          serialization-formatter?-update!
          skip-verification?-get
          skip-verification?-set!
          skip-verification?-update!
          unmanaged-code?-get
          unmanaged-code?-set!
          unmanaged-code?-update!
          flags-get
          flags-set!
          flags-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Permissions.SecurityPermissionAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.Permissions.SecurityPermissionAttribute a))
  (define (security-permission-attribute? a)
    (clr-is System.Security.Permissions.SecurityPermissionAttribute a))
  (define-method-port
    create-permission
    System.Security.Permissions.SecurityPermissionAttribute
    CreatePermission
    (System.Security.IPermission))
  (define-field-port
    assertion?-get
    assertion?-set!
    assertion?-update!
    (property:)
    System.Security.Permissions.SecurityPermissionAttribute
    Assertion
    System.Boolean)
  (define-field-port
    binding-redirects?-get
    binding-redirects?-set!
    binding-redirects?-update!
    (property:)
    System.Security.Permissions.SecurityPermissionAttribute
    BindingRedirects
    System.Boolean)
  (define-field-port
    control-app-domain?-get
    control-app-domain?-set!
    control-app-domain?-update!
    (property:)
    System.Security.Permissions.SecurityPermissionAttribute
    ControlAppDomain
    System.Boolean)
  (define-field-port
    control-domain-policy?-get
    control-domain-policy?-set!
    control-domain-policy?-update!
    (property:)
    System.Security.Permissions.SecurityPermissionAttribute
    ControlDomainPolicy
    System.Boolean)
  (define-field-port
    control-evidence?-get
    control-evidence?-set!
    control-evidence?-update!
    (property:)
    System.Security.Permissions.SecurityPermissionAttribute
    ControlEvidence
    System.Boolean)
  (define-field-port
    control-policy?-get
    control-policy?-set!
    control-policy?-update!
    (property:)
    System.Security.Permissions.SecurityPermissionAttribute
    ControlPolicy
    System.Boolean)
  (define-field-port
    control-principal?-get
    control-principal?-set!
    control-principal?-update!
    (property:)
    System.Security.Permissions.SecurityPermissionAttribute
    ControlPrincipal
    System.Boolean)
  (define-field-port
    control-thread?-get
    control-thread?-set!
    control-thread?-update!
    (property:)
    System.Security.Permissions.SecurityPermissionAttribute
    ControlThread
    System.Boolean)
  (define-field-port
    execution?-get
    execution?-set!
    execution?-update!
    (property:)
    System.Security.Permissions.SecurityPermissionAttribute
    Execution
    System.Boolean)
  (define-field-port
    infrastructure?-get
    infrastructure?-set!
    infrastructure?-update!
    (property:)
    System.Security.Permissions.SecurityPermissionAttribute
    Infrastructure
    System.Boolean)
  (define-field-port
    remoting-configuration?-get
    remoting-configuration?-set!
    remoting-configuration?-update!
    (property:)
    System.Security.Permissions.SecurityPermissionAttribute
    RemotingConfiguration
    System.Boolean)
  (define-field-port
    serialization-formatter?-get
    serialization-formatter?-set!
    serialization-formatter?-update!
    (property:)
    System.Security.Permissions.SecurityPermissionAttribute
    SerializationFormatter
    System.Boolean)
  (define-field-port
    skip-verification?-get
    skip-verification?-set!
    skip-verification?-update!
    (property:)
    System.Security.Permissions.SecurityPermissionAttribute
    SkipVerification
    System.Boolean)
  (define-field-port
    unmanaged-code?-get
    unmanaged-code?-set!
    unmanaged-code?-update!
    (property:)
    System.Security.Permissions.SecurityPermissionAttribute
    UnmanagedCode
    System.Boolean)
  (define-field-port
    flags-get
    flags-set!
    flags-update!
    (property:)
    System.Security.Permissions.SecurityPermissionAttribute
    Flags
    System.Security.Permissions.SecurityPermissionFlag))
