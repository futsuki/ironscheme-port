(library (unity-engine networking network-system object-spawn-message)
  (export new
          is?
          object-spawn-message?
          deserialize
          serialize
          net-id-get
          net-id-set!
          net-id-update!
          asset-id-get
          asset-id-set!
          asset-id-update!
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
             UnityEngine.Networking.NetworkSystem.ObjectSpawnMessage
             a
             ...)))))
  (define (is? a)
    (clr-is UnityEngine.Networking.NetworkSystem.ObjectSpawnMessage a))
  (define (object-spawn-message? a)
    (clr-is UnityEngine.Networking.NetworkSystem.ObjectSpawnMessage a))
  (define-method-port
    deserialize
    UnityEngine.Networking.NetworkSystem.ObjectSpawnMessage
    Deserialize
    (System.Void UnityEngine.Networking.NetworkReader))
  (define-method-port
    serialize
    UnityEngine.Networking.NetworkSystem.ObjectSpawnMessage
    Serialize
    (System.Void UnityEngine.Networking.NetworkWriter))
  (define-field-port
    net-id-get
    net-id-set!
    net-id-update!
    ()
    UnityEngine.Networking.NetworkSystem.ObjectSpawnMessage
    netId
    UnityEngine.Networking.NetworkInstanceId)
  (define-field-port
    asset-id-get
    asset-id-set!
    asset-id-update!
    ()
    UnityEngine.Networking.NetworkSystem.ObjectSpawnMessage
    assetId
    UnityEngine.Networking.NetworkHash128)
  (define-field-port
    position-get
    position-set!
    position-update!
    ()
    UnityEngine.Networking.NetworkSystem.ObjectSpawnMessage
    position
    UnityEngine.Vector3)
  (define-field-port
    payload-get
    payload-set!
    payload-update!
    ()
    UnityEngine.Networking.NetworkSystem.ObjectSpawnMessage
    payload
    System.Byte[]))
