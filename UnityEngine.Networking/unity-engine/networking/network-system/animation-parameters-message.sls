(library (unity-engine
          networking
          network-system
          animation-parameters-message)
  (export new
          is?
          animation-parameters-message?
          deserialize
          serialize
          net-id-get
          net-id-set!
          net-id-update!
          parameters-get
          parameters-set!
          parameters-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             UnityEngine.Networking.NetworkSystem.AnimationParametersMessage
             a
             ...)))))
  (define (is? a)
    (clr-is
      UnityEngine.Networking.NetworkSystem.AnimationParametersMessage
      a))
  (define (animation-parameters-message? a)
    (clr-is
      UnityEngine.Networking.NetworkSystem.AnimationParametersMessage
      a))
  (define-method-port
    deserialize
    UnityEngine.Networking.NetworkSystem.AnimationParametersMessage
    Deserialize
    (System.Void UnityEngine.Networking.NetworkReader))
  (define-method-port
    serialize
    UnityEngine.Networking.NetworkSystem.AnimationParametersMessage
    Serialize
    (System.Void UnityEngine.Networking.NetworkWriter))
  (define-field-port
    net-id-get
    net-id-set!
    net-id-update!
    ()
    UnityEngine.Networking.NetworkSystem.AnimationParametersMessage
    netId
    UnityEngine.Networking.NetworkInstanceId)
  (define-field-port
    parameters-get
    parameters-set!
    parameters-update!
    ()
    UnityEngine.Networking.NetworkSystem.AnimationParametersMessage
    parameters
    System.Byte[]))
