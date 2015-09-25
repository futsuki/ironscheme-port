(library (unity-engine networking network-identity)
  (export new
          is?
          network-identity?
          force-scene-id
          rebuild-observers
          is-client?
          is-server?
          has-authority?
          net-id
          scene-id
          server-only?-get
          server-only?-set!
          server-only?-update!
          local-player-authority?-get
          local-player-authority?-set!
          local-player-authority?-update!
          asset-id
          is-local-player?
          player-controller-id
          connection-to-server
          connection-to-client
          observers)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new UnityEngine.Networking.NetworkIdentity a ...)))))
  (define (is? a) (clr-is UnityEngine.Networking.NetworkIdentity a))
  (define (network-identity? a)
    (clr-is UnityEngine.Networking.NetworkIdentity a))
  (define-method-port
    force-scene-id
    UnityEngine.Networking.NetworkIdentity
    ForceSceneId
    (System.Void System.Int32))
  (define-method-port
    rebuild-observers
    UnityEngine.Networking.NetworkIdentity
    RebuildObservers
    (System.Void System.Boolean))
  (define-field-port
    is-client?
    #f
    #f
    (property:)
    UnityEngine.Networking.NetworkIdentity
    isClient
    System.Boolean)
  (define-field-port
    is-server?
    #f
    #f
    (property:)
    UnityEngine.Networking.NetworkIdentity
    isServer
    System.Boolean)
  (define-field-port
    has-authority?
    #f
    #f
    (property:)
    UnityEngine.Networking.NetworkIdentity
    hasAuthority
    System.Boolean)
  (define-field-port
    net-id
    #f
    #f
    (property:)
    UnityEngine.Networking.NetworkIdentity
    netId
    UnityEngine.Networking.NetworkInstanceId)
  (define-field-port
    scene-id
    #f
    #f
    (property:)
    UnityEngine.Networking.NetworkIdentity
    sceneId
    UnityEngine.Networking.NetworkSceneId)
  (define-field-port
    server-only?-get
    server-only?-set!
    server-only?-update!
    (property:)
    UnityEngine.Networking.NetworkIdentity
    serverOnly
    System.Boolean)
  (define-field-port
    local-player-authority?-get
    local-player-authority?-set!
    local-player-authority?-update!
    (property:)
    UnityEngine.Networking.NetworkIdentity
    localPlayerAuthority
    System.Boolean)
  (define-field-port
    asset-id
    #f
    #f
    (property:)
    UnityEngine.Networking.NetworkIdentity
    assetId
    UnityEngine.Networking.NetworkHash128)
  (define-field-port
    is-local-player?
    #f
    #f
    (property:)
    UnityEngine.Networking.NetworkIdentity
    isLocalPlayer
    System.Boolean)
  (define-field-port
    player-controller-id
    #f
    #f
    (property:)
    UnityEngine.Networking.NetworkIdentity
    playerControllerId
    System.Int16)
  (define-field-port
    connection-to-server
    #f
    #f
    (property:)
    UnityEngine.Networking.NetworkIdentity
    connectionToServer
    UnityEngine.Networking.NetworkConnection)
  (define-field-port
    connection-to-client
    #f
    #f
    (property:)
    UnityEngine.Networking.NetworkIdentity
    connectionToClient
    UnityEngine.Networking.NetworkConnection)
  (define-field-port
    observers
    #f
    #f
    (property:)
    UnityEngine.Networking.NetworkIdentity
    observers
    "System.Collections.ObjectModel.ReadOnlyCollection`1[[UnityEngine.Networking.NetworkConnection, UnityEngine.Networking, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]]"))
