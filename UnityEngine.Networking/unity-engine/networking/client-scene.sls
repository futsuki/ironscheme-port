(library (unity-engine networking client-scene)
  (export new
          is?
          client-scene?
          find-local-object
          unregister-spawn-handler
          add-player?
          connect-local-server
          destroy-all-client-objects
          ready?
          remove-player?
          register-spawn-handler
          set-local-object
          register-prefab
          clear-spawners
          unregister-prefab
          local-players
          ready?
          ready-connection
          objects
          prefabs
          spawnable-objects)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new UnityEngine.Networking.ClientScene a ...)))))
  (define (is? a) (clr-is UnityEngine.Networking.ClientScene a))
  (define (client-scene? a)
    (clr-is UnityEngine.Networking.ClientScene a))
  (define-method-port
    find-local-object
    UnityEngine.Networking.ClientScene
    FindLocalObject
    (static:
      UnityEngine.GameObject
      UnityEngine.Networking.NetworkInstanceId))
  (define-method-port
    unregister-spawn-handler
    UnityEngine.Networking.ClientScene
    UnregisterSpawnHandler
    (static: System.Void UnityEngine.Networking.NetworkHash128))
  (define-method-port
    add-player?
    UnityEngine.Networking.ClientScene
    AddPlayer
    (static:
      System.Boolean
      UnityEngine.Networking.NetworkConnection
      System.Int16)
    (static: System.Boolean System.Int16))
  (define-method-port
    connect-local-server
    UnityEngine.Networking.ClientScene
    ConnectLocalServer
    (static: UnityEngine.Networking.NetworkClient))
  (define-method-port
    destroy-all-client-objects
    UnityEngine.Networking.ClientScene
    DestroyAllClientObjects
    (static: System.Void))
  (define-method-port
    ready?
    UnityEngine.Networking.ClientScene
    Ready
    (static: System.Boolean UnityEngine.Networking.NetworkConnection))
  (define-method-port
    remove-player?
    UnityEngine.Networking.ClientScene
    RemovePlayer
    (static: System.Boolean System.Int16))
  (define-method-port
    register-spawn-handler
    UnityEngine.Networking.ClientScene
    RegisterSpawnHandler
    (static:
      System.Void
      UnityEngine.Networking.NetworkHash128
      UnityEngine.Networking.SpawnDelegate
      UnityEngine.Networking.UnSpawnDelegate))
  (define-method-port
    set-local-object
    UnityEngine.Networking.ClientScene
    SetLocalObject
    (static:
      System.Void
      UnityEngine.Networking.NetworkInstanceId
      UnityEngine.GameObject))
  (define-method-port
    register-prefab
    UnityEngine.Networking.ClientScene
    RegisterPrefab
    (static:
      System.Void
      UnityEngine.GameObject
      UnityEngine.Networking.SpawnDelegate
      UnityEngine.Networking.UnSpawnDelegate)
    (static: System.Void UnityEngine.GameObject))
  (define-method-port
    clear-spawners
    UnityEngine.Networking.ClientScene
    ClearSpawners
    (static: System.Void))
  (define-method-port
    unregister-prefab
    UnityEngine.Networking.ClientScene
    UnregisterPrefab
    (static: System.Void UnityEngine.GameObject))
  (define-field-port
    local-players
    #f
    #f
    (static: property:)
    UnityEngine.Networking.ClientScene
    localPlayers
    "System.Collections.Generic.List`1[[UnityEngine.Networking.PlayerController, UnityEngine.Networking, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]]")
  (define-field-port
    ready?
    #f
    #f
    (static: property:)
    UnityEngine.Networking.ClientScene
    ready
    System.Boolean)
  (define-field-port
    ready-connection
    #f
    #f
    (static: property:)
    UnityEngine.Networking.ClientScene
    readyConnection
    UnityEngine.Networking.NetworkConnection)
  (define-field-port
    objects
    #f
    #f
    (static: property:)
    UnityEngine.Networking.ClientScene
    objects
    "System.Collections.Generic.Dictionary`2[[UnityEngine.Networking.NetworkInstanceId, UnityEngine.Networking, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null],[UnityEngine.Networking.NetworkIdentity, UnityEngine.Networking, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]]")
  (define-field-port
    prefabs
    #f
    #f
    (static: property:)
    UnityEngine.Networking.ClientScene
    prefabs
    "System.Collections.Generic.Dictionary`2[[UnityEngine.Networking.NetworkHash128, UnityEngine.Networking, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null],[UnityEngine.GameObject, UnityEngine, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null]]")
  (define-field-port
    spawnable-objects
    #f
    #f
    (static: property:)
    UnityEngine.Networking.ClientScene
    spawnableObjects
    "System.Collections.Generic.Dictionary`2[[UnityEngine.Networking.NetworkSceneId, UnityEngine.Networking, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null],[UnityEngine.Networking.NetworkIdentity, UnityEngine.Networking, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]]"))
