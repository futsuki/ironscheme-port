(library (unity-engine networking connection-config-internal)
  (export new
          is?
          connection-config-internal?
          init-ack-delay
          init-overflow-drop-threshold
          init-max-connection-attempt
          init-connect-timeout
          dispose
          add-channel
          init-fragment-size
          init-wrapper
          init-all-cost-timeout
          init-ping-timeout
          init-max-combined-reliable-message-size
          init-max-sent-message-queue-size
          init-max-combined-reliable-message-count
          init-packet-size
          init-reduced-ping-timeout
          get-channel
          init-min-update-timeout
          init-disconnect-timeout
          init-network-drop-threshold
          init-is-acks-long
          init-resend-timeout
          channel-size)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             UnityEngine.Networking.ConnectionConfigInternal
             a
             ...)))))
  (define (is? a)
    (clr-is UnityEngine.Networking.ConnectionConfigInternal a))
  (define (connection-config-internal? a)
    (clr-is UnityEngine.Networking.ConnectionConfigInternal a))
  (define-method-port
    init-ack-delay
    UnityEngine.Networking.ConnectionConfigInternal
    InitAckDelay
    (System.Void System.UInt32))
  (define-method-port
    init-overflow-drop-threshold
    UnityEngine.Networking.ConnectionConfigInternal
    InitOverflowDropThreshold
    (System.Void System.Byte))
  (define-method-port
    init-max-connection-attempt
    UnityEngine.Networking.ConnectionConfigInternal
    InitMaxConnectionAttempt
    (System.Void System.Byte))
  (define-method-port
    init-connect-timeout
    UnityEngine.Networking.ConnectionConfigInternal
    InitConnectTimeout
    (System.Void System.UInt32))
  (define-method-port
    dispose
    UnityEngine.Networking.ConnectionConfigInternal
    Dispose
    (System.Void))
  (define-method-port
    add-channel
    UnityEngine.Networking.ConnectionConfigInternal
    AddChannel
    (System.Byte UnityEngine.Networking.QosType))
  (define-method-port
    init-fragment-size
    UnityEngine.Networking.ConnectionConfigInternal
    InitFragmentSize
    (System.Void System.UInt16))
  (define-method-port
    init-wrapper
    UnityEngine.Networking.ConnectionConfigInternal
    InitWrapper
    (System.Void))
  (define-method-port
    init-all-cost-timeout
    UnityEngine.Networking.ConnectionConfigInternal
    InitAllCostTimeout
    (System.Void System.UInt32))
  (define-method-port
    init-ping-timeout
    UnityEngine.Networking.ConnectionConfigInternal
    InitPingTimeout
    (System.Void System.UInt32))
  (define-method-port
    init-max-combined-reliable-message-size
    UnityEngine.Networking.ConnectionConfigInternal
    InitMaxCombinedReliableMessageSize
    (System.Void System.UInt16))
  (define-method-port
    init-max-sent-message-queue-size
    UnityEngine.Networking.ConnectionConfigInternal
    InitMaxSentMessageQueueSize
    (System.Void System.UInt16))
  (define-method-port
    init-max-combined-reliable-message-count
    UnityEngine.Networking.ConnectionConfigInternal
    InitMaxCombinedReliableMessageCount
    (System.Void System.UInt16))
  (define-method-port
    init-packet-size
    UnityEngine.Networking.ConnectionConfigInternal
    InitPacketSize
    (System.Void System.UInt16))
  (define-method-port
    init-reduced-ping-timeout
    UnityEngine.Networking.ConnectionConfigInternal
    InitReducedPingTimeout
    (System.Void System.UInt32))
  (define-method-port
    get-channel
    UnityEngine.Networking.ConnectionConfigInternal
    GetChannel
    (UnityEngine.Networking.QosType System.Int32))
  (define-method-port
    init-min-update-timeout
    UnityEngine.Networking.ConnectionConfigInternal
    InitMinUpdateTimeout
    (System.Void System.UInt32))
  (define-method-port
    init-disconnect-timeout
    UnityEngine.Networking.ConnectionConfigInternal
    InitDisconnectTimeout
    (System.Void System.UInt32))
  (define-method-port
    init-network-drop-threshold
    UnityEngine.Networking.ConnectionConfigInternal
    InitNetworkDropThreshold
    (System.Void System.Byte))
  (define-method-port
    init-is-acks-long
    UnityEngine.Networking.ConnectionConfigInternal
    InitIsAcksLong
    (System.Void System.Boolean))
  (define-method-port
    init-resend-timeout
    UnityEngine.Networking.ConnectionConfigInternal
    InitResendTimeout
    (System.Void System.UInt32))
  (define-field-port
    channel-size
    #f
    #f
    (property:)
    UnityEngine.Networking.ConnectionConfigInternal
    ChannelSize
    System.Int32))
