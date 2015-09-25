(library (unity-engine
          networking
          network-system
          object-spawn-scene-message)
  (export new
          is?
          object-spawn-scene-message?
          deserialize
          serialize
          net-id-get
          net-id-set!
          net-id-update!
          scene-id-get
          scene-id-set!
          scene-id-update!
          position-get
          position-set!
          position-update!
          payload-get
          payload-set!
          payload-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             UnityEngine.Networking.NetworkSystem.ObjectSpawnSceneMessage
             a
             ...)))))
  (define (is? a)
    (clr-is
      UnityEngine.Networking.NetworkSystem.ObjectSpawnSceneMessage
      a))
  (define (object-spawn-scene-message? a)
    (clr-is
      UnityEngine.Networking.NetworkSystem.ObjectSpawnSceneMessage
      a))
  (define-method-port
    deserialize
    UnityEngine.Networking.NetworkSystem.ObjectSpawnSceneMessage
    Deserialize
    (System.Void UnityEngine.Networking.NetworkReader))
  (define-method-port
    serialize
    UnityEngine.Networking.NetworkSystem.ObjectSpawnSceneMessage
    Serialize
    (System.Void UnityEngine.Networking.NetworkWriter))
  (define-field-port
    net-id-get
    net-id-set!
    net-id-update!
    ()
    UnityEngine.Networking.NetworkSystem.ObjectSpawnSceneMessage
    netId
    UnityEngine.Networking.NetworkInstanceId)
  (define-field-port
    scene-id-get
    scene-id-set!
    scene-id-update!
    ()
    UnityEngine.Networking.NetworkSystem.ObjectSpawnSceneMessage
    sceneId
    UnityEngine.Networking.NetworkSceneId)
  (define-field-port
    position-get
    position-set!
    position-update!
    ()
    UnityEngine.Networking.NetworkSystem.ObjectSpawnSceneMessage
    position
    UnityEngine.Vector3)
  (define-field-port
    payload-get
    payload-set!
    payload-update!
    ()
    UnityEngine.Networking.NetworkSystem.ObjectSpawnSceneMessage
    payload
    System.Byte[]))
