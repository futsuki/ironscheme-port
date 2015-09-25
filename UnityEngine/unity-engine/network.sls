(library (unity-engine network)
  (export new
          is?
          network?
          destroy
          test-connection
          get-last-ping
          connect
          initialize-server
          instantiate
          get-average-ping
          allocate-view-id
          remove-rpcs
          remove-rpcs-in-group
          initialize-security
          destroy-player-objects
          close-connection
          set-receiving-enabled
          have-public-address?
          test-connection-nat
          disconnect
          set-level-prefix
          set-sending-enabled
          incoming-password-get
          incoming-password-set!
          incoming-password-update!
          log-level-get
          log-level-set!
          log-level-update!
          connections
          player
          is-client?
          is-server?
          peer-type
          send-rate-get
          send-rate-set!
          send-rate-update!
          is-message-queue-running?-get
          is-message-queue-running?-set!
          is-message-queue-running?-update!
          time
          minimum-allocatable-view-ids-get
          minimum-allocatable-view-ids-set!
          minimum-allocatable-view-ids-update!
          use-nat?-get
          use-nat?-set!
          use-nat?-update!
          nat-facilitator-ip-get
          nat-facilitator-ip-set!
          nat-facilitator-ip-update!
          nat-facilitator-port-get
          nat-facilitator-port-set!
          nat-facilitator-port-update!
          connection-tester-ip-get
          connection-tester-ip-set!
          connection-tester-ip-update!
          connection-tester-port-get
          connection-tester-port-set!
          connection-tester-port-update!
          max-connections-get
          max-connections-set!
          max-connections-update!
          proxy-ip-get
          proxy-ip-set!
          proxy-ip-update!
          proxy-port-get
          proxy-port-set!
          proxy-port-update!
          use-proxy?-get
          use-proxy?-set!
          use-proxy?-update!
          proxy-password-get
          proxy-password-set!
          proxy-password-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.Network a ...)))))
  (define (is? a) (clr-is UnityEngine.Network a))
  (define (network? a) (clr-is UnityEngine.Network a))
  (define-method-port
    destroy
    UnityEngine.Network
    Destroy
    (static: System.Void UnityEngine.GameObject)
    (static: System.Void UnityEngine.NetworkViewID))
  (define-method-port
    test-connection
    UnityEngine.Network
    TestConnection
    (static: UnityEngine.ConnectionTesterStatus)
    (static: UnityEngine.ConnectionTesterStatus System.Boolean))
  (define-method-port
    get-last-ping
    UnityEngine.Network
    GetLastPing
    (static: System.Int32 UnityEngine.NetworkPlayer))
  (define-method-port
    connect
    UnityEngine.Network
    Connect
    (static:
      UnityEngine.NetworkConnectionError
      UnityEngine.HostData
      System.String)
    (static: UnityEngine.NetworkConnectionError UnityEngine.HostData)
    (static:
      UnityEngine.NetworkConnectionError
      System.String
      System.String)
    (static: UnityEngine.NetworkConnectionError System.String)
    (static:
      UnityEngine.NetworkConnectionError
      System.String[]
      System.Int32
      System.String)
    (static:
      UnityEngine.NetworkConnectionError
      System.String[]
      System.Int32)
    (static:
      UnityEngine.NetworkConnectionError
      System.String
      System.Int32
      System.String)
    (static:
      UnityEngine.NetworkConnectionError
      System.String
      System.Int32))
  (define-method-port
    initialize-server
    UnityEngine.Network
    InitializeServer
    (static:
      UnityEngine.NetworkConnectionError
      System.Int32
      System.Int32)
    (static:
      UnityEngine.NetworkConnectionError
      System.Int32
      System.Int32
      System.Boolean))
  (define-method-port
    instantiate
    UnityEngine.Network
    Instantiate
    (static:
      UnityEngine.Object
      UnityEngine.Object
      UnityEngine.Vector3
      UnityEngine.Quaternion
      System.Int32))
  (define-method-port
    get-average-ping
    UnityEngine.Network
    GetAveragePing
    (static: System.Int32 UnityEngine.NetworkPlayer))
  (define-method-port
    allocate-view-id
    UnityEngine.Network
    AllocateViewID
    (static: UnityEngine.NetworkViewID))
  (define-method-port
    remove-rpcs
    UnityEngine.Network
    RemoveRPCs
    (static: System.Void UnityEngine.NetworkViewID)
    (static: System.Void UnityEngine.NetworkPlayer System.Int32)
    (static: System.Void UnityEngine.NetworkPlayer))
  (define-method-port
    remove-rpcs-in-group
    UnityEngine.Network
    RemoveRPCsInGroup
    (static: System.Void System.Int32))
  (define-method-port
    initialize-security
    UnityEngine.Network
    InitializeSecurity
    (static: System.Void))
  (define-method-port
    destroy-player-objects
    UnityEngine.Network
    DestroyPlayerObjects
    (static: System.Void UnityEngine.NetworkPlayer))
  (define-method-port
    close-connection
    UnityEngine.Network
    CloseConnection
    (static: System.Void UnityEngine.NetworkPlayer System.Boolean))
  (define-method-port
    set-receiving-enabled
    UnityEngine.Network
    SetReceivingEnabled
    (static:
      System.Void
      UnityEngine.NetworkPlayer
      System.Int32
      System.Boolean))
  (define-method-port
    have-public-address?
    UnityEngine.Network
    HavePublicAddress
    (static: System.Boolean))
  (define-method-port
    test-connection-nat
    UnityEngine.Network
    TestConnectionNAT
    (static: UnityEngine.ConnectionTesterStatus)
    (static: UnityEngine.ConnectionTesterStatus System.Boolean))
  (define-method-port
    disconnect
    UnityEngine.Network
    Disconnect
    (static: System.Void)
    (static: System.Void System.Int32))
  (define-method-port
    set-level-prefix
    UnityEngine.Network
    SetLevelPrefix
    (static: System.Void System.Int32))
  (define-method-port
    set-sending-enabled
    UnityEngine.Network
    SetSendingEnabled
    (static:
      System.Void
      UnityEngine.NetworkPlayer
      System.Int32
      System.Boolean)
    (static: System.Void System.Int32 System.Boolean))
  (define-field-port
    incoming-password-get
    incoming-password-set!
    incoming-password-update!
    (static: property:)
    UnityEngine.Network
    incomingPassword
    System.String)
  (define-field-port
    log-level-get
    log-level-set!
    log-level-update!
    (static: property:)
    UnityEngine.Network
    logLevel
    UnityEngine.NetworkLogLevel)
  (define-field-port
    connections
    #f
    #f
    (static: property:)
    UnityEngine.Network
    connections
    UnityEngine.NetworkPlayer[])
  (define-field-port
    player
    #f
    #f
    (static: property:)
    UnityEngine.Network
    player
    UnityEngine.NetworkPlayer)
  (define-field-port
    is-client?
    #f
    #f
    (static: property:)
    UnityEngine.Network
    isClient
    System.Boolean)
  (define-field-port
    is-server?
    #f
    #f
    (static: property:)
    UnityEngine.Network
    isServer
    System.Boolean)
  (define-field-port
    peer-type
    #f
    #f
    (static: property:)
    UnityEngine.Network
    peerType
    UnityEngine.NetworkPeerType)
  (define-field-port
    send-rate-get
    send-rate-set!
    send-rate-update!
    (static: property:)
    UnityEngine.Network
    sendRate
    System.Single)
  (define-field-port
    is-message-queue-running?-get
    is-message-queue-running?-set!
    is-message-queue-running?-update!
    (static: property:)
    UnityEngine.Network
    isMessageQueueRunning
    System.Boolean)
  (define-field-port
    time
    #f
    #f
    (static: property:)
    UnityEngine.Network
    time
    System.Double)
  (define-field-port
    minimum-allocatable-view-ids-get
    minimum-allocatable-view-ids-set!
    minimum-allocatable-view-ids-update!
    (static: property:)
    UnityEngine.Network
    minimumAllocatableViewIDs
    System.Int32)
  (define-field-port
    use-nat?-get
    use-nat?-set!
    use-nat?-update!
    (static: property:)
    UnityEngine.Network
    useNat
    System.Boolean)
  (define-field-port
    nat-facilitator-ip-get
    nat-facilitator-ip-set!
    nat-facilitator-ip-update!
    (static: property:)
    UnityEngine.Network
    natFacilitatorIP
    System.String)
  (define-field-port
    nat-facilitator-port-get
    nat-facilitator-port-set!
    nat-facilitator-port-update!
    (static: property:)
    UnityEngine.Network
    natFacilitatorPort
    System.Int32)
  (define-field-port
    connection-tester-ip-get
    connection-tester-ip-set!
    connection-tester-ip-update!
    (static: property:)
    UnityEngine.Network
    connectionTesterIP
    System.String)
  (define-field-port
    connection-tester-port-get
    connection-tester-port-set!
    connection-tester-port-update!
    (static: property:)
    UnityEngine.Network
    connectionTesterPort
    System.Int32)
  (define-field-port
    max-connections-get
    max-connections-set!
    max-connections-update!
    (static: property:)
    UnityEngine.Network
    maxConnections
    System.Int32)
  (define-field-port
    proxy-ip-get
    proxy-ip-set!
    proxy-ip-update!
    (static: property:)
    UnityEngine.Network
    proxyIP
    System.String)
  (define-field-port
    proxy-port-get
    proxy-port-set!
    proxy-port-update!
    (static: property:)
    UnityEngine.Network
    proxyPort
    System.Int32)
  (define-field-port
    use-proxy?-get
    use-proxy?-set!
    use-proxy?-update!
    (static: property:)
    UnityEngine.Network
    useProxy
    System.Boolean)
  (define-field-port
    proxy-password-get
    proxy-password-set!
    proxy-password-update!
    (static: property:)
    UnityEngine.Network
    proxyPassword
    System.String))
