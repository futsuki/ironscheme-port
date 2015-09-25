(library (system configuration internal delegating-config-host)
  (export is?
          delegating-config-host?
          prefetch-all?
          open-stream-for-read
          is-trusted-config-path?
          impersonate
          is-location-applicable?
          decrypt-section
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
          encrypt-section
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
    (clr-is System.Configuration.Internal.DelegatingConfigHost a))
  (define (delegating-config-host? a)
    (clr-is System.Configuration.Internal.DelegatingConfigHost a))
  (define-method-port
    prefetch-all?
    System.Configuration.Internal.DelegatingConfigHost
    PrefetchAll
    (System.Boolean System.String System.String))
  (define-method-port
    open-stream-for-read
    System.Configuration.Internal.DelegatingConfigHost
    OpenStreamForRead
    (System.IO.Stream System.String System.Boolean)
    (System.IO.Stream System.String))
  (define-method-port
    is-trusted-config-path?
    System.Configuration.Internal.DelegatingConfigHost
    IsTrustedConfigPath
    (System.Boolean System.String))
  (define-method-port
    impersonate
    System.Configuration.Internal.DelegatingConfigHost
    Impersonate
    (System.IDisposable))
  (define-method-port
    is-location-applicable?
    System.Configuration.Internal.DelegatingConfigHost
    IsLocationApplicable
    (System.Boolean System.String))
  (define-method-port
    decrypt-section
    System.Configuration.Internal.DelegatingConfigHost
    DecryptSection
    (System.String
      System.String
      System.Configuration.ProtectedConfigurationProvider
      System.Configuration.ProtectedConfigurationSection))
  (define-method-port
    is-above-application?
    System.Configuration.Internal.DelegatingConfigHost
    IsAboveApplication
    (System.Boolean System.String))
  (define-method-port
    is-init-delayed?
    System.Configuration.Internal.DelegatingConfigHost
    IsInitDelayed
    (System.Boolean
      System.Configuration.Internal.IInternalConfigRecord))
  (define-method-port
    require-complete-init
    System.Configuration.Internal.DelegatingConfigHost
    RequireCompleteInit
    (System.Void System.Configuration.Internal.IInternalConfigRecord))
  (define-method-port
    verify-definition-allowed
    System.Configuration.Internal.DelegatingConfigHost
    VerifyDefinitionAllowed
    (System.Void
      System.String
      System.Configuration.ConfigurationAllowDefinition
      System.Configuration.ConfigurationAllowExeDefinition
      System.Configuration.Internal.IConfigErrorInfo))
  (define-method-port
    get-stream-name
    System.Configuration.Internal.DelegatingConfigHost
    GetStreamName
    (System.String System.String))
  (define-method-port
    get-config-type-name
    System.Configuration.Internal.DelegatingConfigHost
    GetConfigTypeName
    (System.String System.Type))
  (define-method-port
    init
    System.Configuration.Internal.DelegatingConfigHost
    Init
    (System.Void
      System.Configuration.Internal.IInternalConfigRoot
      System.Object[]))
  (define-method-port
    is-definition-allowed?
    System.Configuration.Internal.DelegatingConfigHost
    IsDefinitionAllowed
    (System.Boolean
      System.String
      System.Configuration.ConfigurationAllowDefinition
      System.Configuration.ConfigurationAllowExeDefinition))
  (define-method-port
    is-config-record-required?
    System.Configuration.Internal.DelegatingConfigHost
    IsConfigRecordRequired
    (System.Boolean System.String))
  (define-method-port
    get-restricted-permissions
    System.Configuration.Internal.DelegatingConfigHost
    GetRestrictedPermissions
    (System.Void
      System.Configuration.Internal.IInternalConfigRecord
      System.Security.PermissionSet&
      System.Boolean&))
  (define-method-port
    prefetch-section?
    System.Configuration.Internal.DelegatingConfigHost
    PrefetchSection
    (System.Boolean System.String System.String))
  (define-method-port
    encrypt-section
    System.Configuration.Internal.DelegatingConfigHost
    EncryptSection
    (System.String
      System.String
      System.Configuration.ProtectedConfigurationProvider
      System.Configuration.ProtectedConfigurationSection))
  (define-method-port
    create-configuration-context
    System.Configuration.Internal.DelegatingConfigHost
    CreateConfigurationContext
    (System.Object System.String System.String))
  (define-method-port
    get-stream-version
    System.Configuration.Internal.DelegatingConfigHost
    GetStreamVersion
    (System.Object System.String))
  (define-method-port
    delete-stream
    System.Configuration.Internal.DelegatingConfigHost
    DeleteStream
    (System.Void System.String))
  (define-method-port
    create-deprecated-config-context
    System.Configuration.Internal.DelegatingConfigHost
    CreateDeprecatedConfigContext
    (System.Object System.String))
  (define-method-port
    open-stream-for-write
    System.Configuration.Internal.DelegatingConfigHost
    OpenStreamForWrite
    (System.IO.Stream
      System.String
      System.String
      System.Object&
      System.Boolean)
    (System.IO.Stream System.String System.String System.Object&))
  (define-method-port
    write-completed
    System.Configuration.Internal.DelegatingConfigHost
    WriteCompleted
    (System.Void
      System.String
      System.Boolean
      System.Object
      System.Boolean)
    (System.Void System.String System.Boolean System.Object))
  (define-method-port
    is-secondary-root?
    System.Configuration.Internal.DelegatingConfigHost
    IsSecondaryRoot
    (System.Boolean System.String))
  (define-method-port
    get-config-type
    System.Configuration.Internal.DelegatingConfigHost
    GetConfigType
    (System.Type System.String System.Boolean))
  (define-method-port
    stop-monitoring-stream-for-changes
    System.Configuration.Internal.DelegatingConfigHost
    StopMonitoringStreamForChanges
    (System.Void
      System.String
      System.Configuration.Internal.StreamChangeCallback))
  (define-method-port
    get-config-path-from-location-sub-path
    System.Configuration.Internal.DelegatingConfigHost
    GetConfigPathFromLocationSubPath
    (System.String System.String System.String))
  (define-method-port
    start-monitoring-stream-for-changes
    System.Configuration.Internal.DelegatingConfigHost
    StartMonitoringStreamForChanges
    (System.Object
      System.String
      System.Configuration.Internal.StreamChangeCallback))
  (define-method-port
    is-file?
    System.Configuration.Internal.DelegatingConfigHost
    IsFile
    (System.Boolean System.String))
  (define-method-port
    get-stream-name-for-config-source
    System.Configuration.Internal.DelegatingConfigHost
    GetStreamNameForConfigSource
    (System.String System.String System.String))
  (define-method-port
    is-full-trust-section-without-aptca-allowed?
    System.Configuration.Internal.DelegatingConfigHost
    IsFullTrustSectionWithoutAptcaAllowed
    (System.Boolean
      System.Configuration.Internal.IInternalConfigRecord))
  (define-method-port
    init-for-configuration
    System.Configuration.Internal.DelegatingConfigHost
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
    System.Configuration.Internal.DelegatingConfigHost
    IsRemote
    System.Boolean)
  (define-field-port
    supports-change-notifications?
    #f
    #f
    (property:)
    System.Configuration.Internal.DelegatingConfigHost
    SupportsChangeNotifications
    System.Boolean)
  (define-field-port
    supports-location?
    #f
    #f
    (property:)
    System.Configuration.Internal.DelegatingConfigHost
    SupportsLocation
    System.Boolean)
  (define-field-port
    supports-path?
    #f
    #f
    (property:)
    System.Configuration.Internal.DelegatingConfigHost
    SupportsPath
    System.Boolean)
  (define-field-port
    supports-refresh?
    #f
    #f
    (property:)
    System.Configuration.Internal.DelegatingConfigHost
    SupportsRefresh
    System.Boolean))
