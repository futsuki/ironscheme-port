(library (system deployment internal internal-activation-context-helper)
  (export is?
          internal-activation-context-helper?
          get-activation-context-data
          get-deployment-component-manifest
          get-application-component-manifest
          prepare-for-execution
          get-deployment-manifest-bytes
          get-application-manifest-bytes
          is-first-run?)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is
      System.Deployment.Internal.InternalActivationContextHelper
      a))
  (define (internal-activation-context-helper? a)
    (clr-is
      System.Deployment.Internal.InternalActivationContextHelper
      a))
  (define-method-port
    get-activation-context-data
    System.Deployment.Internal.InternalActivationContextHelper
    GetActivationContextData
    (static: System.Object System.ActivationContext))
  (define-method-port
    get-deployment-component-manifest
    System.Deployment.Internal.InternalActivationContextHelper
    GetDeploymentComponentManifest
    (static: System.Object System.ActivationContext))
  (define-method-port
    get-application-component-manifest
    System.Deployment.Internal.InternalActivationContextHelper
    GetApplicationComponentManifest
    (static: System.Object System.ActivationContext))
  (define-method-port
    prepare-for-execution
    System.Deployment.Internal.InternalActivationContextHelper
    PrepareForExecution
    (static: System.Void System.ActivationContext))
  (define-method-port
    get-deployment-manifest-bytes
    System.Deployment.Internal.InternalActivationContextHelper
    GetDeploymentManifestBytes
    (static: System.Byte[] System.ActivationContext))
  (define-method-port
    get-application-manifest-bytes
    System.Deployment.Internal.InternalActivationContextHelper
    GetApplicationManifestBytes
    (static: System.Byte[] System.ActivationContext))
  (define-method-port
    is-first-run?
    System.Deployment.Internal.InternalActivationContextHelper
    IsFirstRun
    (static: System.Boolean System.ActivationContext)))
