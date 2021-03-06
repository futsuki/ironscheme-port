(library (unity-engine networking network-behaviour)
  (export new
          is?
          network-behaviour?
          set-dirty-bit
          on-start-authority
          invoke-sync-list?
          invoke-sync-event?
          on-start-server
          get-network-send-interval
          pre-start-client
          on-deserialize
          on-set-local-visibility
          get-network-channel
          clear-all-dirty-bits
          invoke-rpc?
          on-network-destroy
          on-check-observer?
          on-start-client
          on-rebuild-observers?
          on-serialize?
          invoke-command?
          on-start-local-player
          local-player-authority?
          is-server?
          is-client?
          is-local-player?
          has-authority?
          net-id
          connection-to-server
          connection-to-client
          player-controller-id)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new UnityEngine.Networking.NetworkBehaviour a ...)))))
  (define (is? a) (clr-is UnityEngine.Networking.NetworkBehaviour a))
  (define (network-behaviour? a)
    (clr-is UnityEngine.Networking.NetworkBehaviour a))
  (define-method-port
    set-dirty-bit
    UnityEngine.Networking.NetworkBehaviour
    SetDirtyBit
    (System.Void System.UInt32))
  (define-method-port
    on-start-authority
    UnityEngine.Networking.NetworkBehaviour
    OnStartAuthority
    (System.Void))
  (define-method-port
    invoke-sync-list?
    UnityEngine.Networking.NetworkBehaviour
    InvokeSyncList
    (System.Boolean System.Int32 UnityEngine.Networking.NetworkReader))
  (define-method-port
    invoke-sync-event?
    UnityEngine.Networking.NetworkBehaviour
    InvokeSyncEvent
    (System.Boolean System.Int32 UnityEngine.Networking.NetworkReader))
  (define-method-port
    on-start-server
    UnityEngine.Networking.NetworkBehaviour
    OnStartServer
    (System.Void))
  (define-method-port
    get-network-send-interval
    UnityEngine.Networking.NetworkBehaviour
    GetNetworkSendInterval
    (System.Single))
  (define-method-port
    pre-start-client
    UnityEngine.Networking.NetworkBehaviour
    PreStartClient
    (System.Void))
  (define-method-port
    on-deserialize
    UnityEngine.Networking.NetworkBehaviour
    OnDeserialize
    (System.Void UnityEngine.Networking.NetworkReader System.Boolean))
  (define-method-port
    on-set-local-visibility
    UnityEngine.Networking.NetworkBehaviour
    OnSetLocalVisibility
    (System.Void System.Boolean))
  (define-method-port
    get-network-channel
    UnityEngine.Networking.NetworkBehaviour
    GetNetworkChannel
    (System.Int32))
  (define-method-port
    clear-all-dirty-bits
    UnityEngine.Networking.NetworkBehaviour
    ClearAllDirtyBits
    (System.Void))
  (define-method-port
    invoke-rpc?
    UnityEngine.Networking.NetworkBehaviour
    InvokeRPC
    (System.Boolean System.Int32 UnityEngine.Networking.NetworkReader))
  (define-method-port
    on-network-destroy
    UnityEngine.Networking.NetworkBehaviour
    OnNetworkDestroy
    (System.Void))
  (define-method-port
    on-check-observer?
    UnityEngine.Networking.NetworkBehaviour
    OnCheckObserver
    (System.Boolean UnityEngine.Networking.NetworkConnection))
  (define-method-port
    on-start-client
    UnityEngine.Networking.NetworkBehaviour
    OnStartClient
    (System.Void))
  (define-method-port
    on-rebuild-observers?
    UnityEngine.Networking.NetworkBehaviour
    OnRebuildObservers)
  (define-method-port
    on-serialize?
    UnityEngine.Networking.NetworkBehaviour
    OnSerialize
    (System.Boolean
      UnityEngine.Networking.NetworkWriter
      System.Boolean))
  (define-method-port
    invoke-command?
    UnityEngine.Networking.NetworkBehaviour
    InvokeCommand
    (System.Boolean System.Int32 UnityEngine.Networking.NetworkReader))
  (define-method-port
    on-start-local-player
    UnityEngine.Networking.NetworkBehaviour
    OnStartLocalPlayer
    (System.Void))
  (define-field-port
    local-player-authority?
    #f
    #f
    (property:)
    UnityEngine.Networking.NetworkBehaviour
    localPlayerAuthority
    System.Boolean)
  (define-field-port
    is-server?
    #f
    #f
    (property:)
    UnityEngine.Networking.NetworkBehaviour
    isServer
    System.Boolean)
  (define-field-port
    is-client?
    #f
    #f
    (property:)
    UnityEngine.Networking.NetworkBehaviour
    isClient
    System.Boolean)
  (define-field-port
    is-local-player?
    #f
    #f
    (property:)
    UnityEngine.Networking.NetworkBehaviour
    isLocalPlayer
    System.Boolean)
  (define-field-port
    has-authority?
    #f
    #f
    (property:)
    UnityEngine.Networking.NetworkBehaviour
    hasAuthority
    System.Boolean)
  (define-field-port
    net-id
    #f
    #f
    (property:)
    UnityEngine.Networking.NetworkBehaviour
    netId
    UnityEngine.Networking.NetworkInstanceId)
  (define-field-port
    connection-to-server
    #f
    #f
    (property:)
    UnityEngine.Networking.NetworkBehaviour
    connectionToServer
    UnityEngine.Networking.NetworkConnection)
  (define-field-port
    connection-to-client
    #f
    #f
    (property:)
    UnityEngine.Networking.NetworkBehaviour
    connectionToClient
    UnityEngine.Networking.NetworkConnection)
  (define-field-port
    player-controller-id
    #f
    #f
    (property:)
    UnityEngine.Networking.NetworkBehaviour
    playerControllerId
    System.Int16))
