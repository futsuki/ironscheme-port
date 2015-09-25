(library (unity-engine
          networking
          network-system
          animation-trigger-message)
  (export new
          is?
          animation-trigger-message?
          deserialize
          serialize
          net-id-get
          net-id-set!
          net-id-update!
          hash-get
          hash-set!
          hash-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             UnityEngine.Networking.NetworkSystem.AnimationTriggerMessage
             a
             ...)))))
  (define (is? a)
    (clr-is
      UnityEngine.Networking.NetworkSystem.AnimationTriggerMessage
      a))
  (define (animation-trigger-message? a)
    (clr-is
      UnityEngine.Networking.NetworkSystem.AnimationTriggerMessage
      a))
  (define-method-port
    deserialize
    UnityEngine.Networking.NetworkSystem.AnimationTriggerMessage
    Deserialize
    (System.Void UnityEngine.Networking.NetworkReader))
  (define-method-port
    serialize
    UnityEngine.Networking.NetworkSystem.AnimationTriggerMessage
    Serialize
    (System.Void UnityEngine.Networking.NetworkWriter))
  (define-field-port
    net-id-get
    net-id-set!
    net-id-update!
    ()
    UnityEngine.Networking.NetworkSystem.AnimationTriggerMessage
    netId
    UnityEngine.Networking.NetworkInstanceId)
  (define-field-port
    hash-get
    hash-set!
    hash-update!
    ()
    UnityEngine.Networking.NetworkSystem.AnimationTriggerMessage
    hash
    System.Int32))
