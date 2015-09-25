(library (unity-engine networking network-system owner-message)
  (export new
          is?
          owner-message?
          deserialize
          serialize
          net-id-get
          net-id-set!
          net-id-update!
          player-controller-id-get
          player-controller-id-set!
          player-controller-id-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             UnityEngine.Networking.NetworkSystem.OwnerMessage
             a
             ...)))))
  (define (is? a)
    (clr-is UnityEngine.Networking.NetworkSystem.OwnerMessage a))
  (define (owner-message? a)
    (clr-is UnityEngine.Networking.NetworkSystem.OwnerMessage a))
  (define-method-port
    deserialize
    UnityEngine.Networking.NetworkSystem.OwnerMessage
    Deserialize
    (System.Void UnityEngine.Networking.NetworkReader))
  (define-method-port
    serialize
    UnityEngine.Networking.NetworkSystem.OwnerMessage
    Serialize
    (System.Void UnityEngine.Networking.NetworkWriter))
  (define-field-port
    net-id-get
    net-id-set!
    net-id-update!
    ()
    UnityEngine.Networking.NetworkSystem.OwnerMessage
    netId
    UnityEngine.Networking.NetworkInstanceId)
  (define-field-port
    player-controller-id-get
    player-controller-id-set!
    player-controller-id-update!
    ()
    UnityEngine.Networking.NetworkSystem.OwnerMessage
    playerControllerId
    System.Int16))
