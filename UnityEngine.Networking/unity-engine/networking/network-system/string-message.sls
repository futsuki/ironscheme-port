(library (unity-engine networking network-system string-message)
  (export new
          is?
          string-message?
          deserialize
          serialize
          value-get
          value-set!
          value-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             UnityEngine.Networking.NetworkSystem.StringMessage
             a
             ...)))))
  (define (is? a)
    (clr-is UnityEngine.Networking.NetworkSystem.StringMessage a))
  (define (string-message? a)
    (clr-is UnityEngine.Networking.NetworkSystem.StringMessage a))
  (define-method-port
    deserialize
    UnityEngine.Networking.NetworkSystem.StringMessage
    Deserialize
    (System.Void UnityEngine.Networking.NetworkReader))
  (define-method-port
    serialize
    UnityEngine.Networking.NetworkSystem.StringMessage
    Serialize
    (System.Void UnityEngine.Networking.NetworkWriter))
  (define-field-port
    value-get
    value-set!
    value-update!
    ()
    UnityEngine.Networking.NetworkSystem.StringMessage
    value
    System.String))
