(library (unity-engine networking msg-type)
  (export new
          is?
          msg-type?
          msg-type-to-string
          object-destroy
          rpc
          object-spawn
          owner
          command
          local-player-transform
          sync-event
          update-vars
          sync-list
          object-spawn-scene
          network-info
          spawn-finished
          object-hide
          crc
          internal-highest
          connect
          disconnect
          error
          ready
          not-ready
          add-player
          remove-player
          scene
          animation
          animation-parameters
          animation-trigger
          lobby-ready-to-begin
          lobby-scene-loaded
          lobby-add-player-failed
          lobby-return-to-lobby
          highest)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.Networking.MsgType a ...)))))
  (define (is? a) (clr-is UnityEngine.Networking.MsgType a))
  (define (msg-type? a) (clr-is UnityEngine.Networking.MsgType a))
  (define-method-port
    msg-type-to-string
    UnityEngine.Networking.MsgType
    MsgTypeToString
    (static: System.String System.Int16))
  (define-field-port
    object-destroy
    #f
    #f
    (static:)
    UnityEngine.Networking.MsgType
    ObjectDestroy
    System.Int16)
  (define-field-port
    rpc
    #f
    #f
    (static:)
    UnityEngine.Networking.MsgType
    Rpc
    System.Int16)
  (define-field-port
    object-spawn
    #f
    #f
    (static:)
    UnityEngine.Networking.MsgType
    ObjectSpawn
    System.Int16)
  (define-field-port
    owner
    #f
    #f
    (static:)
    UnityEngine.Networking.MsgType
    Owner
    System.Int16)
  (define-field-port
    command
    #f
    #f
    (static:)
    UnityEngine.Networking.MsgType
    Command
    System.Int16)
  (define-field-port
    local-player-transform
    #f
    #f
    (static:)
    UnityEngine.Networking.MsgType
    LocalPlayerTransform
    System.Int16)
  (define-field-port
    sync-event
    #f
    #f
    (static:)
    UnityEngine.Networking.MsgType
    SyncEvent
    System.Int16)
  (define-field-port
    update-vars
    #f
    #f
    (static:)
    UnityEngine.Networking.MsgType
    UpdateVars
    System.Int16)
  (define-field-port
    sync-list
    #f
    #f
    (static:)
    UnityEngine.Networking.MsgType
    SyncList
    System.Int16)
  (define-field-port
    object-spawn-scene
    #f
    #f
    (static:)
    UnityEngine.Networking.MsgType
    ObjectSpawnScene
    System.Int16)
  (define-field-port
    network-info
    #f
    #f
    (static:)
    UnityEngine.Networking.MsgType
    NetworkInfo
    System.Int16)
  (define-field-port
    spawn-finished
    #f
    #f
    (static:)
    UnityEngine.Networking.MsgType
    SpawnFinished
    System.Int16)
  (define-field-port
    object-hide
    #f
    #f
    (static:)
    UnityEngine.Networking.MsgType
    ObjectHide
    System.Int16)
  (define-field-port
    crc
    #f
    #f
    (static:)
    UnityEngine.Networking.MsgType
    CRC
    System.Int16)
  (define-field-port
    internal-highest
    #f
    #f
    (static:)
    UnityEngine.Networking.MsgType
    InternalHighest
    System.Int16)
  (define-field-port
    connect
    #f
    #f
    (static:)
    UnityEngine.Networking.MsgType
    Connect
    System.Int16)
  (define-field-port
    disconnect
    #f
    #f
    (static:)
    UnityEngine.Networking.MsgType
    Disconnect
    System.Int16)
  (define-field-port
    error
    #f
    #f
    (static:)
    UnityEngine.Networking.MsgType
    Error
    System.Int16)
  (define-field-port
    ready
    #f
    #f
    (static:)
    UnityEngine.Networking.MsgType
    Ready
    System.Int16)
  (define-field-port
    not-ready
    #f
    #f
    (static:)
    UnityEngine.Networking.MsgType
    NotReady
    System.Int16)
  (define-field-port
    add-player
    #f
    #f
    (static:)
    UnityEngine.Networking.MsgType
    AddPlayer
    System.Int16)
  (define-field-port
    remove-player
    #f
    #f
    (static:)
    UnityEngine.Networking.MsgType
    RemovePlayer
    System.Int16)
  (define-field-port
    scene
    #f
    #f
    (static:)
    UnityEngine.Networking.MsgType
    Scene
    System.Int16)
  (define-field-port
    animation
    #f
    #f
    (static:)
    UnityEngine.Networking.MsgType
    Animation
    System.Int16)
  (define-field-port
    animation-parameters
    #f
    #f
    (static:)
    UnityEngine.Networking.MsgType
    AnimationParameters
    System.Int16)
  (define-field-port
    animation-trigger
    #f
    #f
    (static:)
    UnityEngine.Networking.MsgType
    AnimationTrigger
    System.Int16)
  (define-field-port
    lobby-ready-to-begin
    #f
    #f
    (static:)
    UnityEngine.Networking.MsgType
    LobbyReadyToBegin
    System.Int16)
  (define-field-port
    lobby-scene-loaded
    #f
    #f
    (static:)
    UnityEngine.Networking.MsgType
    LobbySceneLoaded
    System.Int16)
  (define-field-port
    lobby-add-player-failed
    #f
    #f
    (static:)
    UnityEngine.Networking.MsgType
    LobbyAddPlayerFailed
    System.Int16)
  (define-field-port
    lobby-return-to-lobby
    #f
    #f
    (static:)
    UnityEngine.Networking.MsgType
    LobbyReturnToLobby
    System.Int16)
  (define-field-port
    highest
    #f
    #f
    (static:)
    UnityEngine.Networking.MsgType
    Highest
    System.Int16))
