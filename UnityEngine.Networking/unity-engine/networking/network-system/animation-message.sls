(library (unity-engine networking network-system animation-message)
  (export new
          is?
          animation-message?
          deserialize
          serialize
          net-id-get
          net-id-set!
          net-id-update!
          state-hash-get
          state-hash-set!
          state-hash-update!
          normalized-time-get
          normalized-time-set!
          normalized-time-update!
          parameters-get
          parameters-set!
          parameters-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             UnityEngine.Networking.NetworkSystem.AnimationMessage
             a
             ...)))))
  (define (is? a)
    (clr-is UnityEngine.Networking.NetworkSystem.AnimationMessage a))
  (define (animation-message? a)
    (clr-is UnityEngine.Networking.NetworkSystem.AnimationMessage a))
  (define-method-port
    deserialize
    UnityEngine.Networking.NetworkSystem.AnimationMessage
    Deserialize
    (System.Void UnityEngine.Networking.NetworkReader))
  (define-method-port
    serialize
    UnityEngine.Networking.NetworkSystem.AnimationMessage
    Serialize
    (System.Void UnityEngine.Networking.NetworkWriter))
  (define-field-port
    net-id-get
    net-id-set!
    net-id-update!
    ()
    UnityEngine.Networking.NetworkSystem.AnimationMessage
    netId
    UnityEngine.Networking.NetworkInstanceId)
  (define-field-port
    state-hash-get
    state-hash-set!
    state-hash-update!
    ()
    UnityEngine.Networking.NetworkSystem.AnimationMessage
    stateHash
    System.Int32)
  (define-field-port
    normalized-time-get
    normalized-time-set!
    normalized-time-update!
    ()
    UnityEngine.Networking.NetworkSystem.AnimationMessage
    normalizedTime
    System.Single)
  (define-field-port
    parameters-get
    parameters-set!
    parameters-update!
    ()
    UnityEngine.Networking.NetworkSystem.AnimationMessage
    parameters
    System.Byte[]))
