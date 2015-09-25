(library (unity-engine networking ulocal-connection-to-server)
  (export new
          is?
          ulocal-connection-to-server?
          get-stats-in
          send-unreliable?
          send-writer?
          send?
          send-bytes?
          get-stats-out
          send-by-channel?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             UnityEngine.Networking.ULocalConnectionToServer
             a
             ...)))))
  (define (is? a)
    (clr-is UnityEngine.Networking.ULocalConnectionToServer a))
  (define (ulocal-connection-to-server? a)
    (clr-is UnityEngine.Networking.ULocalConnectionToServer a))
  (define-method-port
    get-stats-in
    UnityEngine.Networking.ULocalConnectionToServer
    GetStatsIn
    (System.Void System.Int32& System.Int32&))
  (define-method-port
    send-unreliable?
    UnityEngine.Networking.ULocalConnectionToServer
    SendUnreliable
    (System.Boolean System.Int16 UnityEngine.Networking.MessageBase))
  (define-method-port
    send-writer?
    UnityEngine.Networking.ULocalConnectionToServer
    SendWriter
    (System.Boolean UnityEngine.Networking.NetworkWriter System.Int32))
  (define-method-port
    send?
    UnityEngine.Networking.ULocalConnectionToServer
    Send
    (System.Boolean System.Int16 UnityEngine.Networking.MessageBase))
  (define-method-port
    send-bytes?
    UnityEngine.Networking.ULocalConnectionToServer
    SendBytes
    (System.Boolean System.Byte[] System.Int32 System.Int32))
  (define-method-port
    get-stats-out
    UnityEngine.Networking.ULocalConnectionToServer
    GetStatsOut
    (System.Void
      System.Int32&
      System.Int32&
      System.Int32&
      System.Int32&))
  (define-method-port
    send-by-channel?
    UnityEngine.Networking.ULocalConnectionToServer
    SendByChannel
    (System.Boolean
      System.Int16
      UnityEngine.Networking.MessageBase
      System.Int32)))
