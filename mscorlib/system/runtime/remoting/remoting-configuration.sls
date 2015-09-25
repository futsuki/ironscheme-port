(library (system runtime remoting remoting-configuration)
  (export is?
          remoting-configuration?
          get-registered-well-known-client-types
          get-registered-activated-service-types
          get-registered-well-known-service-types
          is-remotely-activated-client-type
          register-activated-service-type
          register-well-known-client-type
          is-well-known-client-type
          configure
          is-activation-allowed?
          get-registered-activated-client-types
          register-well-known-service-type
          register-activated-client-type
          custom-errors-enabled?
          application-id
          application-name-get
          application-name-set!
          application-name-update!
          custom-errors-mode-get
          custom-errors-mode-set!
          custom-errors-mode-update!
          process-id)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Runtime.Remoting.RemotingConfiguration a))
  (define (remoting-configuration? a)
    (clr-is System.Runtime.Remoting.RemotingConfiguration a))
  (define-method-port
    get-registered-well-known-client-types
    System.Runtime.Remoting.RemotingConfiguration
    GetRegisteredWellKnownClientTypes
    (static: System.Runtime.Remoting.WellKnownClientTypeEntry[]))
  (define-method-port
    get-registered-activated-service-types
    System.Runtime.Remoting.RemotingConfiguration
    GetRegisteredActivatedServiceTypes
    (static: System.Runtime.Remoting.ActivatedServiceTypeEntry[]))
  (define-method-port
    get-registered-well-known-service-types
    System.Runtime.Remoting.RemotingConfiguration
    GetRegisteredWellKnownServiceTypes
    (static: System.Runtime.Remoting.WellKnownServiceTypeEntry[]))
  (define-method-port
    is-remotely-activated-client-type
    System.Runtime.Remoting.RemotingConfiguration
    IsRemotelyActivatedClientType
    (static:
      System.Runtime.Remoting.ActivatedClientTypeEntry
      System.String
      System.String)
    (static:
      System.Runtime.Remoting.ActivatedClientTypeEntry
      System.Type))
  (define-method-port
    register-activated-service-type
    System.Runtime.Remoting.RemotingConfiguration
    RegisterActivatedServiceType
    (static: System.Void System.Type)
    (static:
      System.Void
      System.Runtime.Remoting.ActivatedServiceTypeEntry))
  (define-method-port
    register-well-known-client-type
    System.Runtime.Remoting.RemotingConfiguration
    RegisterWellKnownClientType
    (static:
      System.Void
      System.Runtime.Remoting.WellKnownClientTypeEntry)
    (static: System.Void System.Type System.String))
  (define-method-port
    is-well-known-client-type
    System.Runtime.Remoting.RemotingConfiguration
    IsWellKnownClientType
    (static:
      System.Runtime.Remoting.WellKnownClientTypeEntry
      System.String
      System.String)
    (static:
      System.Runtime.Remoting.WellKnownClientTypeEntry
      System.Type))
  (define-method-port
    configure
    System.Runtime.Remoting.RemotingConfiguration
    Configure
    (static: System.Void System.String)
    (static: System.Void System.String System.Boolean))
  (define-method-port
    is-activation-allowed?
    System.Runtime.Remoting.RemotingConfiguration
    IsActivationAllowed
    (static: System.Boolean System.Type))
  (define-method-port
    get-registered-activated-client-types
    System.Runtime.Remoting.RemotingConfiguration
    GetRegisteredActivatedClientTypes
    (static: System.Runtime.Remoting.ActivatedClientTypeEntry[]))
  (define-method-port
    register-well-known-service-type
    System.Runtime.Remoting.RemotingConfiguration
    RegisterWellKnownServiceType
    (static:
      System.Void
      System.Runtime.Remoting.WellKnownServiceTypeEntry)
    (static:
      System.Void
      System.Type
      System.String
      System.Runtime.Remoting.WellKnownObjectMode))
  (define-method-port
    register-activated-client-type
    System.Runtime.Remoting.RemotingConfiguration
    RegisterActivatedClientType
    (static: System.Void System.Type System.String)
    (static:
      System.Void
      System.Runtime.Remoting.ActivatedClientTypeEntry))
  (define-method-port
    custom-errors-enabled?
    System.Runtime.Remoting.RemotingConfiguration
    CustomErrorsEnabled
    (static: System.Boolean System.Boolean))
  (define-field-port
    application-id
    #f
    #f
    (static: property:)
    System.Runtime.Remoting.RemotingConfiguration
    ApplicationId
    System.String)
  (define-field-port
    application-name-get
    application-name-set!
    application-name-update!
    (static: property:)
    System.Runtime.Remoting.RemotingConfiguration
    ApplicationName
    System.String)
  (define-field-port
    custom-errors-mode-get
    custom-errors-mode-set!
    custom-errors-mode-update!
    (static: property:)
    System.Runtime.Remoting.RemotingConfiguration
    CustomErrorsMode
    System.Runtime.Remoting.CustomErrorsModes)
  (define-field-port
    process-id
    #f
    #f
    (static: property:)
    System.Runtime.Remoting.RemotingConfiguration
    ProcessId
    System.String))
