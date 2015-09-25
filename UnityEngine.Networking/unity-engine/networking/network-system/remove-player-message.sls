(library (unity-engine networking network-system remove-player-message)
  (export new
          is?
          remove-player-message?
          deserialize
          serialize
          player-controller-id-get
          player-controller-id-set!
          player-controller-id-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             UnityEngine.Networking.NetworkSystem.RemovePlayerMessage
             a
             ...)))))
  (define (is? a)
    (clr-is UnityEngine.Networking.NetworkSystem.RemovePlayerMessage a))
  (define (remove-player-message? a)
    (clr-is UnityEngine.Networking.NetworkSystem.RemovePlayerMessage a))
  (define-method-port
    deserialize
    UnityEngine.Networking.NetworkSystem.RemovePlayerMessage
    Deserialize
    (System.Void UnityEngine.Networking.NetworkReader))
  (define-method-port
    serialize
    UnityEngine.Networking.NetworkSystem.RemovePlayerMessage
    Serialize
    (System.Void UnityEngine.Networking.NetworkWriter))
  (define-field-port
    player-controller-id-get
    player-controller-id-set!
    player-controller-id-update!
    ()
    UnityEngine.Networking.NetworkSystem.RemovePlayerMessage
    playerControllerId
    System.Int16))
