(library (system configuration internal-configuration-host)
  (export is?
          internal-configuration-host?
          prefetch-all?
          open-stream-for-read
          is-trusted-config-path?
          impersonate
          is-location-applicable?
          is-above-application?
          is-init-delayed?
          require-complete-init
          verify-definition-allowed
          get-stream-name
          get-config-type-name
          init
          is-definition-allowed?
          is-config-record-required?
          get-restricted-permissions
          prefetch-section?
          create-configuration-context
          get-stream-version
          delete-stream
          create-deprecated-config-context
          open-stream-for-write
          write-completed
          is-secondary-root?
          get-config-type
          stop-monitoring-stream-for-changes
          get-config-path-from-location-sub-path
          start-monitoring-stream-for-changes
          is-file?
          get-stream-name-for-config-source
          is-full-trust-section-without-aptca-allowed?
          init-for-configuration
          is-remote?
          supports-change-notifications?
          supports-location?
          supports-path?
          supports-refresh?)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Configuration.InternalConfigurationHost a))
  (define (internal-configuration-host? a)
    (clr-is System.Configuration.InternalConfigurationHost a))
  (define-method-port
    prefetch-all?
    System.Configuration.InternalConfigurationHost
    PrefetchAll
    (System.Boolean System.String System.String))
  (define-method-port
    open-stream-for-read
    System.Configuration.InternalConfigurationHost
    OpenStreamForRead
    (System.IO.Stream System.String System.Boolean)
    (System.IO.Stream System.String))
  (define-method-port
    is-trusted-config-path?
    System.Configuration.InternalConfigurationHost
    IsTrustedConfigPath
    (System.Boolean System.String))
  (define-method-port
    impersonate
    System.Configuration.InternalConfigurationHost
    Impersonate
    (System.IDisposable))
  (define-method-port
    is-location-applicable?
    System.Configuration.InternalConfigurationHost
    IsLocationApplicable
    (System.Boolean System.String))
  (define-method-port
    is-above-application?
    System.Configuration.InternalConfigurationHost
    IsAboveApplication
    (System.Boolean System.String))
  (define-method-port
    is-init-delayed?
    System.Configuration.InternalConfigurationHost
    IsInitDelayed
    (System.Boolean
      System.Configuration.Internal.IInternalConfigRecord))
  (define-method-port
    require-complete-init
    System.Configuration.InternalConfigurationHost
    RequireCompleteInit
    (System.Void System.Configuration.Internal.IInternalConfigRecord))
  (define-method-port
    verify-definition-allowed
    System.Configuration.InternalConfigurationHost
    VerifyDefinitionAllowed
    (System.Void
      System.String
      System.Configuration.ConfigurationAllowDefinition
      System.Configuration.ConfigurationAllowExeDefinition
      System.Configuration.Internal.IConfigErrorInfo))
  (define-method-port
    get-stream-name
    System.Configuration.InternalConfigurationHost
    GetStreamName
    (System.String System.String))
  (define-method-port
    get-config-type-name
    System.Configuration.InternalConfigurationHost
    GetConfigTypeName
    (System.String System.Type))
  (define-method-port
    init
    System.Configuration.InternalConfigurationHost
    Init
    (System.Void
      System.Configuration.Internal.IInternalConfigRoot
      System.Object[]))
  (define-method-port
    is-definition-allowed?
    System.Configuration.InternalConfigurationHost
    IsDefinitionAllowed
    (System.Boolean
      System.String
      System.Configuration.ConfigurationAllowDefinition
      System.Configuration.ConfigurationAllowExeDefinition))
  (define-method-port
    is-config-record-required?
    System.Configuration.InternalConfigurationHost
    IsConfigRecordRequired
    (System.Boolean System.String))
  (define-method-port
    get-restricted-permissions
    System.Configuration.InternalConfigurationHost
    GetRestrictedPermissions
    (System.Void
      System.Configuration.Internal.IInternalConfigRecord
      System.Security.PermissionSet&
      System.Boolean&))
  (define-method-port
    prefetch-section?
    System.Configuration.InternalConfigurationHost
    PrefetchSection
    (System.Boolean System.String System.String))
  (define-method-port
    create-configuration-context
    System.Configuration.InternalConfigurationHost
    CreateConfigurationContext
    (System.Object System.String System.String))
  (define-method-port
    get-stream-version
    System.Configuration.InternalConfigurationHost
    GetStreamVersion
    (System.Object System.String))
  (define-method-port
    delete-stream
    System.Configuration.InternalConfigurationHost
    DeleteStream
    (System.Void System.String))
  (define-method-port
    create-deprecated-config-context
    System.Configuration.InternalConfigurationHost
    CreateDeprecatedConfigContext
    (System.Object System.String))
  (define-method-port
    open-stream-for-write
    System.Configuration.InternalConfigurationHost
    OpenStreamForWrite
    (System.IO.Stream
      System.String
      System.String
      System.Object&
      System.Boolean)
    (System.IO.Stream System.String System.String System.Object&))
  (define-method-port
    write-completed
    System.Configuration.InternalConfigurationHost
    WriteCompleted
    (System.Void
      System.String
      System.Boolean
      System.Object
      System.Boolean)
    (System.Void System.String System.Boolean System.Object))
  (define-method-port
    is-secondary-root?
    System.Configuration.InternalConfigurationHost
    IsSecondaryRoot
    (System.Boolean System.String))
  (define-method-port
    get-config-type
    System.Configuration.InternalConfigurationHost
    GetConfigType
    (System.Type System.String System.Boolean))
  (define-method-port
    stop-monitoring-stream-for-changes
    System.Configuration.InternalConfigurationHost
    StopMonitoringStreamForChanges
    (System.Void
      System.String
      System.Configuration.Internal.StreamChangeCallback))
  (define-method-port
    get-config-path-from-location-sub-path
    System.Configuration.InternalConfigurationHost
    GetConfigPathFromLocationSubPath
    (System.String System.String System.String))
  (define-method-port
    start-monitoring-stream-for-changes
    System.Configuration.InternalConfigurationHost
    StartMonitoringStreamForChanges
    (System.Object
      System.String
      System.Configuration.Internal.StreamChangeCallback))
  (define-method-port
    is-file?
    System.Configuration.InternalConfigurationHost
    IsFile
    (System.Boolean System.String))
  (define-method-port
    get-stream-name-for-config-source
    System.Configuration.InternalConfigurationHost
    GetStreamNameForConfigSource
    (System.String System.String System.String))
  (define-method-port
    is-full-trust-section-without-aptca-allowed?
    System.Configuration.InternalConfigurationHost
    IsFullTrustSectionWithoutAptcaAllowed
    (System.Boolean
      System.Configuration.Internal.IInternalConfigRecord))
  (define-method-port
    init-for-configuration
    System.Configuration.InternalConfigurationHost
    InitForConfiguration
    (System.Void
      System.String&
      System.String&
      System.String&
      System.Configuration.Internal.IInternalConfigRoot
      System.Object[]))
  (define-field-port
    is-remote?
    #f
    #f
    (property:)
    System.Configuration.InternalConfigurationHost
    IsRemote
    System.Boolean)
  (define-field-port
    supports-change-notifications?
    #f
    #f
    (property:)
    System.Configuration.InternalConfigurationHost
    SupportsChangeNotifications
    System.Boolean)
  (define-field-port
    supports-location?
    #f
    #f
    (property:)
    System.Configuration.InternalConfigurationHost
    SupportsLocation
    System.Boolean)
  (define-field-port
    supports-path?
    #f
    #f
    (property:)
    System.Configuration.InternalConfigurationHost
    SupportsPath
    System.Boolean)
  (define-field-port
    supports-refresh?
    #f
    #f
    (property:)
    System.Configuration.InternalConfigurationHost
    SupportsRefresh
    System.Boolean))
