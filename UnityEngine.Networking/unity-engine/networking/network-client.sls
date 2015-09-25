(library (unity-engine networking network-client)
  (export new
          is?
          network-client?
          unregister-handler
          get-stats-in
          shutdown-all
          connect
          send-unreliable?
          set-max-delay
          register-handler
          send-writer?
          get-rtt
          register-handler-safe
          reset-connection-stats
          configure?
          get-total-connection-stats
          shutdown
          connect-with-simulator
          send?
          send-bytes?
          get-stats-out
          get-connection-stats
          disconnect
          send-by-channel?
          all-clients
          active?
          server-ip
          server-port
          connection
          peers
          handlers
          num-channels
          is-connected?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new UnityEngine.Networking.NetworkClient a ...)))))
  (define (is? a) (clr-is UnityEngine.Networking.NetworkClient a))
  (define (network-client? a)
    (clr-is UnityEngine.Networking.NetworkClient a))
  (define-method-port
    unregister-handler
    UnityEngine.Networking.NetworkClient
    UnregisterHandler
    (System.Void System.Int16))
  (define-method-port
    get-stats-in
    UnityEngine.Networking.NetworkClient
    GetStatsIn
    (System.Void System.Int32& System.Int32&))
  (define-method-port
    shutdown-all
    UnityEngine.Networking.NetworkClient
    ShutdownAll
    (static: System.Void))
  (define-method-port
    connect
    UnityEngine.Networking.NetworkClient
    Connect
    (System.Void System.Net.EndPoint)
    (System.Void System.String System.Int32)
    (System.Void UnityEngine.Networking.Match.MatchInfo))
  (define-method-port
    send-unreliable?
    UnityEngine.Networking.NetworkClient
    SendUnreliable
    (System.Boolean System.Int16 UnityEngine.Networking.MessageBase))
  (define-method-port
    set-max-delay
    UnityEngine.Networking.NetworkClient
    SetMaxDelay
    (System.Void System.Single))
  (define-method-port
    register-handler
    UnityEngine.Networking.NetworkClient
    RegisterHandler
    (System.Void
      System.Int16
      UnityEngine.Networking.NetworkMessageDelegate))
  (define-method-port
    send-writer?
    UnityEngine.Networking.NetworkClient
    SendWriter
    (System.Boolean UnityEngine.Networking.NetworkWriter System.Int32))
  (define-method-port
    get-rtt
    UnityEngine.Networking.NetworkClient
    GetRTT
    (System.Int32))
  (define-method-port
    register-handler-safe
    UnityEngine.Networking.NetworkClient
    RegisterHandlerSafe
    (System.Void
      System.Int16
      UnityEngine.Networking.NetworkMessageDelegate))
  (define-method-port
    reset-connection-stats
    UnityEngine.Networking.NetworkClient
    ResetConnectionStats
    (System.Void))
  (define-method-port
    configure?
    UnityEngine.Networking.NetworkClient
    Configure
    (System.Boolean UnityEngine.Networking.HostTopology)
    (System.Boolean
      UnityEngine.Networking.ConnectionConfig
      System.Int32))
  (define-method-port
    get-total-connection-stats
    UnityEngine.Networking.NetworkClient
    GetTotalConnectionStats
    (static:
      "System.Collections.Generic.Dictionary`2[[System.Int16, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089],[UnityEngine.Networking.NetworkConnection+PacketStat, UnityEngine.Networking, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]]"))
  (define-method-port
    shutdown
    UnityEngine.Networking.NetworkClient
    Shutdown
    (System.Void))
  (define-method-port
    connect-with-simulator
    UnityEngine.Networking.NetworkClient
    ConnectWithSimulator
    (System.Void System.String System.Int32 System.Int32 System.Single))
  (define-method-port
    send?
    UnityEngine.Networking.NetworkClient
    Send
    (System.Boolean System.Int16 UnityEngine.Networking.MessageBase))
  (define-method-port
    send-bytes?
    UnityEngine.Networking.NetworkClient
    SendBytes
    (System.Boolean System.Byte[] System.Int32 System.Int32))
  (define-method-port
    get-stats-out
    UnityEngine.Networking.NetworkClient
    GetStatsOut
    (System.Void
      System.Int32&
      System.Int32&
      System.Int32&
      System.Int32&))
  (define-method-port
    get-connection-stats
    UnityEngine.Networking.NetworkClient
    GetConnectionStats
    ("System.Collections.Generic.Dictionary`2[[System.Int16, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089],[UnityEngine.Networking.NetworkConnection+PacketStat, UnityEngine.Networking, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]]"))
  (define-method-port
    disconnect
    UnityEngine.Networking.NetworkClient
    Disconnect
    (System.Void))
  (define-method-port
    send-by-channel?
    UnityEngine.Networking.NetworkClient
    SendByChannel
    (System.Boolean
      System.Int16
      UnityEngine.Networking.MessageBase
      System.Int32))
  (define-field-port
    all-clients
    #f
    #f
    (static: property:)
    UnityEngine.Networking.NetworkClient
    allClients
    "System.Collections.Generic.List`1[[UnityEngine.Networking.NetworkClient, UnityEngine.Networking, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]]")
  (define-field-port
    active?
    #f
    #f
    (static: property:)
    UnityEngine.Networking.NetworkClient
    active
    System.Boolean)
  (define-field-port
    server-ip
    #f
    #f
    (property:)
    UnityEngine.Networking.NetworkClient
    serverIp
    System.String)
  (define-field-port
    server-port
    #f
    #f
    (property:)
    UnityEngine.Networking.NetworkClient
    serverPort
    System.Int32)
  (define-field-port
    connection
    #f
    #f
    (property:)
    UnityEngine.Networking.NetworkClient
    connection
    UnityEngine.Networking.NetworkConnection)
  (define-field-port
    peers
    #f
    #f
    (property:)
    UnityEngine.Networking.NetworkClient
    peers
    UnityEngine.Networking.NetworkSystem.PeerInfoMessage[])
  (define-field-port
    handlers
    #f
    #f
    (property:)
    UnityEngine.Networking.NetworkClient
    handlers
    "System.Collections.Generic.Dictionary`2[[System.Int16, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089],[UnityEngine.Networking.NetworkMessageDelegate, UnityEngine.Networking, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]]")
  (define-field-port
    num-channels
    #f
    #f
    (property:)
    UnityEngine.Networking.NetworkClient
    numChannels
    System.Int32)
  (define-field-port
    is-connected?
    #f
    #f
    (property:)
    UnityEngine.Networking.NetworkClient
    isConnected
    System.Boolean))
