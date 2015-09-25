(library (unity-engine networking network-system add-player-message)
  (export new
          is?
          add-player-message?
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
             UnityEngine.Networking.NetworkSystem.AddPlayerMessage
             a
             ...)))))
  (define (is? a)
    (clr-is UnityEngine.Networking.NetworkSystem.AddPlayerMessage a))
  (define (add-player-message? a)
    (clr-is UnityEngine.Networking.NetworkSystem.AddPlayerMessage a))
  (define-method-port
    deserialize
    UnityEngine.Networking.NetworkSystem.AddPlayerMessage
    Deserialize
    (System.Void UnityEngine.Networking.NetworkReader))
  (define-method-port
    serialize
    UnityEngine.Networking.NetworkSystem.AddPlayerMessage
    Serialize
    (System.Void UnityEngine.Networking.NetworkWriter))
  (define-field-port
    player-controller-id-get
    player-controller-id-set!
    player-controller-id-update!
    ()
    UnityEngine.Networking.NetworkSystem.AddPlayerMessage
    playerControllerId
    System.Int16))
