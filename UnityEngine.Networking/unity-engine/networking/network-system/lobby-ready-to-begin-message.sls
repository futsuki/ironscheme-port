(library (unity-engine
          networking
          network-system
          lobby-ready-to-begin-message)
  (export new
          is?
          lobby-ready-to-begin-message?
          deserialize
          serialize
          slot-id-get
          slot-id-set!
          slot-id-update!
          ready-state?-get
          ready-state?-set!
          ready-state?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             UnityEngine.Networking.NetworkSystem.LobbyReadyToBeginMessage
             a
             ...)))))
  (define (is? a)
    (clr-is
      UnityEngine.Networking.NetworkSystem.LobbyReadyToBeginMessage
      a))
  (define (lobby-ready-to-begin-message? a)
    (clr-is
      UnityEngine.Networking.NetworkSystem.LobbyReadyToBeginMessage
      a))
  (define-method-port
    deserialize
    UnityEngine.Networking.NetworkSystem.LobbyReadyToBeginMessage
    Deserialize
    (System.Void UnityEngine.Networking.NetworkReader))
  (define-method-port
    serialize
    UnityEngine.Networking.NetworkSystem.LobbyReadyToBeginMessage
    Serialize
    (System.Void UnityEngine.Networking.NetworkWriter))
  (define-field-port
    slot-id-get
    slot-id-set!
    slot-id-update!
    ()
    UnityEngine.Networking.NetworkSystem.LobbyReadyToBeginMessage
    slotId
    System.Byte)
  (define-field-port
    ready-state?-get
    ready-state?-set!
    ready-state?-update!
    ()
    UnityEngine.Networking.NetworkSystem.LobbyReadyToBeginMessage
    readyState
    System.Boolean))
