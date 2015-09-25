(library (unity-engine
          networking
          network-system
          object-spawn-finished-message)
  (export new
          is?
          object-spawn-finished-message?
          deserialize
          serialize
          state-get
          state-set!
          state-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             UnityEngine.Networking.NetworkSystem.ObjectSpawnFinishedMessage
             a
             ...)))))
  (define (is? a)
    (clr-is
      UnityEngine.Networking.NetworkSystem.ObjectSpawnFinishedMessage
      a))
  (define (object-spawn-finished-message? a)
    (clr-is
      UnityEngine.Networking.NetworkSystem.ObjectSpawnFinishedMessage
      a))
  (define-method-port
    deserialize
    UnityEngine.Networking.NetworkSystem.ObjectSpawnFinishedMessage
    Deserialize
    (System.Void UnityEngine.Networking.NetworkReader))
  (define-method-port
    serialize
    UnityEngine.Networking.NetworkSystem.ObjectSpawnFinishedMessage
    Serialize
    (System.Void UnityEngine.Networking.NetworkWriter))
  (define-field-port
    state-get
    state-set!
    state-update!
    ()
    UnityEngine.Networking.NetworkSystem.ObjectSpawnFinishedMessage
    state
    System.UInt32))
