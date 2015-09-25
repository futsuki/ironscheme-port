(library (unity-engine networking ulocal-connection-to-client)
  (export new
          is?
          ulocal-connection-to-client?
          get-stats-in
          send-unreliable?
          send-writer?
          send?
          send-bytes?
          get-stats-out
          send-by-channel?
          local-client)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             UnityEngine.Networking.ULocalConnectionToClient
             a
             ...)))))
  (define (is? a)
    (clr-is UnityEngine.Networking.ULocalConnectionToClient a))
  (define (ulocal-connection-to-client? a)
    (clr-is UnityEngine.Networking.ULocalConnectionToClient a))
  (define-method-port
    get-stats-in
    UnityEngine.Networking.ULocalConnectionToClient
    GetStatsIn
    (System.Void System.Int32& System.Int32&))
  (define-method-port
    send-unreliable?
    UnityEngine.Networking.ULocalConnectionToClient
    SendUnreliable
    (System.Boolean System.Int16 UnityEngine.Networking.MessageBase))
  (define-method-port
    send-writer?
    UnityEngine.Networking.ULocalConnectionToClient
    SendWriter
    (System.Boolean UnityEngine.Networking.NetworkWriter System.Int32))
  (define-method-port
    send?
    UnityEngine.Networking.ULocalConnectionToClient
    Send
    (System.Boolean System.Int16 UnityEngine.Networking.MessageBase))
  (define-method-port
    send-bytes?
    UnityEngine.Networking.ULocalConnectionToClient
    SendBytes
    (System.Boolean System.Byte[] System.Int32 System.Int32))
  (define-method-port
    get-stats-out
    UnityEngine.Networking.ULocalConnectionToClient
    GetStatsOut
    (System.Void
      System.Int32&
      System.Int32&
      System.Int32&
      System.Int32&))
  (define-method-port
    send-by-channel?
    UnityEngine.Networking.ULocalConnectionToClient
    SendByChannel
    (System.Boolean
      System.Int16
      UnityEngine.Networking.MessageBase
      System.Int32))
  (define-field-port
    local-client
    #f
    #f
    (property:)
    UnityEngine.Networking.ULocalConnectionToClient
    localClient
    UnityEngine.Networking.LocalClient))
