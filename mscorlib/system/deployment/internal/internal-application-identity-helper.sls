(library (system
          deployment
          internal
          internal-application-identity-helper)
  (export is?
          internal-application-identity-helper?
          get-activation-context-data
          get-internal-app-id)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is
      System.Deployment.Internal.InternalApplicationIdentityHelper
      a))
  (define (internal-application-identity-helper? a)
    (clr-is
      System.Deployment.Internal.InternalApplicationIdentityHelper
      a))
  (define-method-port
    get-activation-context-data
    System.Deployment.Internal.InternalApplicationIdentityHelper
    GetActivationContextData
    (static: System.Object System.ActivationContext))
  (define-method-port
    get-internal-app-id
    System.Deployment.Internal.InternalApplicationIdentityHelper
    GetInternalAppId
    (static: System.Object System.ApplicationIdentity)))
