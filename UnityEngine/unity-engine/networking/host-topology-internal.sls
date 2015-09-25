(library (unity-engine networking host-topology-internal)
  (export new
          is?
          host-topology-internal?
          init-received-pool-size
          dispose
          init-wrapper
          add-special-connection-config-wrapper
          init-message-pool-size-growth-factor
          init-sent-message-pool-size)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             UnityEngine.Networking.HostTopologyInternal
             a
             ...)))))
  (define (is? a)
    (clr-is UnityEngine.Networking.HostTopologyInternal a))
  (define (host-topology-internal? a)
    (clr-is UnityEngine.Networking.HostTopologyInternal a))
  (define-method-port
    init-received-pool-size
    UnityEngine.Networking.HostTopologyInternal
    InitReceivedPoolSize
    (System.Void System.UInt16))
  (define-method-port
    dispose
    UnityEngine.Networking.HostTopologyInternal
    Dispose
    (System.Void))
  (define-method-port
    init-wrapper
    UnityEngine.Networking.HostTopologyInternal
    InitWrapper
    (System.Void
      UnityEngine.Networking.ConnectionConfigInternal
      System.Int32))
  (define-method-port
    add-special-connection-config-wrapper
    UnityEngine.Networking.HostTopologyInternal
    AddSpecialConnectionConfigWrapper
    (System.Int32 UnityEngine.Networking.ConnectionConfigInternal))
  (define-method-port
    init-message-pool-size-growth-factor
    UnityEngine.Networking.HostTopologyInternal
    InitMessagePoolSizeGrowthFactor
    (System.Void System.Single))
  (define-method-port
    init-sent-message-pool-size
    UnityEngine.Networking.HostTopologyInternal
    InitSentMessagePoolSize
    (System.Void System.UInt16)))
