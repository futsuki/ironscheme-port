(library (unity-engine networking network-connection)
  (export new
          is?
          network-connection?
          get-stats-in
          send-unreliable?
          dispose
          set-max-delay
          initialize
          reset-stats
          send-writer?
          send?
          send-bytes?
          get-stats-out
          disconnect
          send-by-channel?
          to-string
          set-channel-option?
          host-id-get
          host-id-set!
          host-id-update!
          connection-id-get
          connection-id-set!
          connection-id-update!
          is-ready?-get
          is-ready?-set!
          is-ready?-update!
          address-get
          address-set!
          address-update!
          player-controllers)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new UnityEngine.Networking.NetworkConnection a ...)))))
  (define (is? a) (clr-is UnityEngine.Networking.NetworkConnection a))
  (define (network-connection? a)
    (clr-is UnityEngine.Networking.NetworkConnection a))
  (define-method-port
    get-stats-in
    UnityEngine.Networking.NetworkConnection
    GetStatsIn
    (System.Void System.Int32& System.Int32&))
  (define-method-port
    send-unreliable?
    UnityEngine.Networking.NetworkConnection
    SendUnreliable
    (System.Boolean System.Int16 UnityEngine.Networking.MessageBase))
  (define-method-port
    dispose
    UnityEngine.Networking.NetworkConnection
    Dispose
    (System.Void))
  (define-method-port
    set-max-delay
    UnityEngine.Networking.NetworkConnection
    SetMaxDelay
    (System.Void System.Single))
  (define-method-port
    initialize
    UnityEngine.Networking.NetworkConnection
    Initialize
    (System.Void
      System.String
      System.Int32
      System.Int32
      UnityEngine.Networking.HostTopology))
  (define-method-port
    reset-stats
    UnityEngine.Networking.NetworkConnection
    ResetStats
    (System.Void))
  (define-method-port
    send-writer?
    UnityEngine.Networking.NetworkConnection
    SendWriter
    (System.Boolean UnityEngine.Networking.NetworkWriter System.Int32))
  (define-method-port
    send?
    UnityEngine.Networking.NetworkConnection
    Send
    (System.Boolean System.Int16 UnityEngine.Networking.MessageBase))
  (define-method-port
    send-bytes?
    UnityEngine.Networking.NetworkConnection
    SendBytes
    (System.Boolean System.Byte[] System.Int32 System.Int32))
  (define-method-port
    get-stats-out
    UnityEngine.Networking.NetworkConnection
    GetStatsOut
    (System.Void
      System.Int32&
      System.Int32&
      System.Int32&
      System.Int32&))
  (define-method-port
    disconnect
    UnityEngine.Networking.NetworkConnection
    Disconnect
    (System.Void))
  (define-method-port
    send-by-channel?
    UnityEngine.Networking.NetworkConnection
    SendByChannel
    (System.Boolean
      System.Int16
      UnityEngine.Networking.MessageBase
      System.Int32))
  (define-method-port
    to-string
    UnityEngine.Networking.NetworkConnection
    ToString
    (System.String))
  (define-method-port
    set-channel-option?
    UnityEngine.Networking.NetworkConnection
    SetChannelOption
    (System.Boolean
      System.Int32
      UnityEngine.Networking.ChannelOption
      System.Int32))
  (define-field-port
    host-id-get
    host-id-set!
    host-id-update!
    ()
    UnityEngine.Networking.NetworkConnection
    hostId
    System.Int32)
  (define-field-port
    connection-id-get
    connection-id-set!
    connection-id-update!
    ()
    UnityEngine.Networking.NetworkConnection
    connectionId
    System.Int32)
  (define-field-port
    is-ready?-get
    is-ready?-set!
    is-ready?-update!
    ()
    UnityEngine.Networking.NetworkConnection
    isReady
    System.Boolean)
  (define-field-port
    address-get
    address-set!
    address-update!
    ()
    UnityEngine.Networking.NetworkConnection
    address
    System.String)
  (define-field-port
    player-controllers
    #f
    #f
    (property:)
    UnityEngine.Networking.NetworkConnection
    playerControllers
    "System.Collections.Generic.List`1[[UnityEngine.Networking.PlayerController, UnityEngine.Networking, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]]"))
