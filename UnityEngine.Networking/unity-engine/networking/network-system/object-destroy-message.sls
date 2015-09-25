(library (unity-engine networking network-system object-destroy-message)
  (export new
          is?
          object-destroy-message?
          deserialize
          serialize
          net-id-get
          net-id-set!
          net-id-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             UnityEngine.Networking.NetworkSystem.ObjectDestroyMessage
             a
             ...)))))
  (define (is? a)
    (clr-is
      UnityEngine.Networking.NetworkSystem.ObjectDestroyMessage
      a))
  (define (object-destroy-message? a)
    (clr-is
      UnityEngine.Networking.NetworkSystem.ObjectDestroyMessage
      a))
  (define-method-port
    deserialize
    UnityEngine.Networking.NetworkSystem.ObjectDestroyMessage
    Deserialize
    (System.Void UnityEngine.Networking.NetworkReader))
  (define-method-port
    serialize
    UnityEngine.Networking.NetworkSystem.ObjectDestroyMessage
    Serialize
    (System.Void UnityEngine.Networking.NetworkWriter))
  (define-field-port
    net-id-get
    net-id-set!
    net-id-update!
    ()
    UnityEngine.Networking.NetworkSystem.ObjectDestroyMessage
    netId
    UnityEngine.Networking.NetworkInstanceId))
