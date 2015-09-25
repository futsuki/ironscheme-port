(library (unity-engine networking global-config-internal)
  (export new
          is?
          global-config-internal?
          init-thread-awake-timeout
          dispose
          init-wrapper
          init-reactor-maximum-sent-messages
          init-reactor-maximum-received-messages
          init-max-packet-size
          init-reactor-model)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             UnityEngine.Networking.GlobalConfigInternal
             a
             ...)))))
  (define (is? a)
    (clr-is UnityEngine.Networking.GlobalConfigInternal a))
  (define (global-config-internal? a)
    (clr-is UnityEngine.Networking.GlobalConfigInternal a))
  (define-method-port
    init-thread-awake-timeout
    UnityEngine.Networking.GlobalConfigInternal
    InitThreadAwakeTimeout
    (System.Void System.UInt32))
  (define-method-port
    dispose
    UnityEngine.Networking.GlobalConfigInternal
    Dispose
    (System.Void))
  (define-method-port
    init-wrapper
    UnityEngine.Networking.GlobalConfigInternal
    InitWrapper
    (System.Void))
  (define-method-port
    init-reactor-maximum-sent-messages
    UnityEngine.Networking.GlobalConfigInternal
    InitReactorMaximumSentMessages
    (System.Void System.UInt16))
  (define-method-port
    init-reactor-maximum-received-messages
    UnityEngine.Networking.GlobalConfigInternal
    InitReactorMaximumReceivedMessages
    (System.Void System.UInt16))
  (define-method-port
    init-max-packet-size
    UnityEngine.Networking.GlobalConfigInternal
    InitMaxPacketSize
    (System.Void System.UInt16))
  (define-method-port
    init-reactor-model
    UnityEngine.Networking.GlobalConfigInternal
    InitReactorModel
    (System.Void System.Byte)))
