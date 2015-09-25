(library (unity-engine networking network-lobby-player)
  (export new
          is?
          network-lobby-player?
          on-client-ready
          send-scene-loaded-message
          on-deserialize
          send-ready-to-begin-message
          on-client-enter-lobby
          on-serialize?
          remove-player
          on-start-client
          on-client-exit-lobby
          show-lobby-gui?-get
          show-lobby-gui?-set!
          show-lobby-gui?-update!
          slot-get
          slot-set!
          slot-update!
          ready-to-begin?-get
          ready-to-begin?-set!
          ready-to-begin?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new UnityEngine.Networking.NetworkLobbyPlayer a ...)))))
  (define (is? a) (clr-is UnityEngine.Networking.NetworkLobbyPlayer a))
  (define (network-lobby-player? a)
    (clr-is UnityEngine.Networking.NetworkLobbyPlayer a))
  (define-method-port
    on-client-ready
    UnityEngine.Networking.NetworkLobbyPlayer
    OnClientReady
    (System.Void System.Boolean))
  (define-method-port
    send-scene-loaded-message
    UnityEngine.Networking.NetworkLobbyPlayer
    SendSceneLoadedMessage
    (System.Void))
  (define-method-port
    on-deserialize
    UnityEngine.Networking.NetworkLobbyPlayer
    OnDeserialize
    (System.Void UnityEngine.Networking.NetworkReader System.Boolean))
  (define-method-port
    send-ready-to-begin-message
    UnityEngine.Networking.NetworkLobbyPlayer
    SendReadyToBeginMessage
    (System.Void))
  (define-method-port
    on-client-enter-lobby
    UnityEngine.Networking.NetworkLobbyPlayer
    OnClientEnterLobby
    (System.Void))
  (define-method-port
    on-serialize?
    UnityEngine.Networking.NetworkLobbyPlayer
    OnSerialize
    (System.Boolean
      UnityEngine.Networking.NetworkWriter
      System.Boolean))
  (define-method-port
    remove-player
    UnityEngine.Networking.NetworkLobbyPlayer
    RemovePlayer
    (System.Void))
  (define-method-port
    on-start-client
    UnityEngine.Networking.NetworkLobbyPlayer
    OnStartClient
    (System.Void))
  (define-method-port
    on-client-exit-lobby
    UnityEngine.Networking.NetworkLobbyPlayer
    OnClientExitLobby
    (System.Void))
  (define-field-port
    show-lobby-gui?-get
    show-lobby-gui?-set!
    show-lobby-gui?-update!
    ()
    UnityEngine.Networking.NetworkLobbyPlayer
    ShowLobbyGUI
    System.Boolean)
  (define-field-port
    slot-get
    slot-set!
    slot-update!
    (property:)
    UnityEngine.Networking.NetworkLobbyPlayer
    slot
    System.Byte)
  (define-field-port
    ready-to-begin?-get
    ready-to-begin?-set!
    ready-to-begin?-update!
    (property:)
    UnityEngine.Networking.NetworkLobbyPlayer
    readyToBegin
    System.Boolean))
