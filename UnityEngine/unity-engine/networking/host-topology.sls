(library (unity-engine networking host-topology)
  (export new
          is?
          host-topology?
          add-special-connection-config
          get-special-connection-config
          default-config
          max-default-connections
          special-connection-configs-count
          special-connection-configs
          received-message-pool-size-get
          received-message-pool-size-set!
          received-message-pool-size-update!
          sent-message-pool-size-get
          sent-message-pool-size-set!
          sent-message-pool-size-update!
          message-pool-size-growth-factor-get
          message-pool-size-growth-factor-set!
          message-pool-size-growth-factor-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new UnityEngine.Networking.HostTopology a ...)))))
  (define (is? a) (clr-is UnityEngine.Networking.HostTopology a))
  (define (host-topology? a)
    (clr-is UnityEngine.Networking.HostTopology a))
  (define-method-port
    add-special-connection-config
    UnityEngine.Networking.HostTopology
    AddSpecialConnectionConfig
    (System.Int32 UnityEngine.Networking.ConnectionConfig))
  (define-method-port
    get-special-connection-config
    UnityEngine.Networking.HostTopology
    GetSpecialConnectionConfig
    (UnityEngine.Networking.ConnectionConfig System.Int32))
  (define-field-port
    default-config
    #f
    #f
    (property:)
    UnityEngine.Networking.HostTopology
    DefaultConfig
    UnityEngine.Networking.ConnectionConfig)
  (define-field-port
    max-default-connections
    #f
    #f
    (property:)
    UnityEngine.Networking.HostTopology
    MaxDefaultConnections
    System.Int32)
  (define-field-port
    special-connection-configs-count
    #f
    #f
    (property:)
    UnityEngine.Networking.HostTopology
    SpecialConnectionConfigsCount
    System.Int32)
  (define-field-port
    special-connection-configs
    #f
    #f
    (property:)
    UnityEngine.Networking.HostTopology
    SpecialConnectionConfigs
    "System.Collections.Generic.List`1[[UnityEngine.Networking.ConnectionConfig, UnityEngine, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null]]")
  (define-field-port
    received-message-pool-size-get
    received-message-pool-size-set!
    received-message-pool-size-update!
    (property:)
    UnityEngine.Networking.HostTopology
    ReceivedMessagePoolSize
    System.UInt16)
  (define-field-port
    sent-message-pool-size-get
    sent-message-pool-size-set!
    sent-message-pool-size-update!
    (property:)
    UnityEngine.Networking.HostTopology
    SentMessagePoolSize
    System.UInt16)
  (define-field-port
    message-pool-size-growth-factor-get
    message-pool-size-growth-factor-set!
    message-pool-size-growth-factor-update!
    (property:)
    UnityEngine.Networking.HostTopology
    MessagePoolSizeGrowthFactor
    System.Single))
