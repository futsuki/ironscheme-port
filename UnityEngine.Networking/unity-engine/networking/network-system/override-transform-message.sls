(library (unity-engine
          networking
          network-system
          override-transform-message)
  (export new
          is?
          override-transform-message?
          deserialize
          serialize
          net-id-get
          net-id-set!
          net-id-update!
          payload-get
          payload-set!
          payload-update!
          teleport?-get
          teleport?-set!
          teleport?-update!
          time-get
          time-set!
          time-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             UnityEngine.Networking.NetworkSystem.OverrideTransformMessage
             a
             ...)))))
  (define (is? a)
    (clr-is
      UnityEngine.Networking.NetworkSystem.OverrideTransformMessage
      a))
  (define (override-transform-message? a)
    (clr-is
      UnityEngine.Networking.NetworkSystem.OverrideTransformMessage
      a))
  (define-method-port
    deserialize
    UnityEngine.Networking.NetworkSystem.OverrideTransformMessage
    Deserialize
    (System.Void UnityEngine.Networking.NetworkReader))
  (define-method-port
    serialize
    UnityEngine.Networking.NetworkSystem.OverrideTransformMessage
    Serialize
    (System.Void UnityEngine.Networking.NetworkWriter))
  (define-field-port
    net-id-get
    net-id-set!
    net-id-update!
    ()
    UnityEngine.Networking.NetworkSystem.OverrideTransformMessage
    netId
    UnityEngine.Networking.NetworkInstanceId)
  (define-field-port
    payload-get
    payload-set!
    payload-update!
    ()
    UnityEngine.Networking.NetworkSystem.OverrideTransformMessage
    payload
    System.Byte[])
  (define-field-port
    teleport?-get
    teleport?-set!
    teleport?-update!
    ()
    UnityEngine.Networking.NetworkSystem.OverrideTransformMessage
    teleport
    System.Boolean)
  (define-field-port
    time-get
    time-set!
    time-update!
    ()
    UnityEngine.Networking.NetworkSystem.OverrideTransformMessage
    time
    System.Int32))
