(library (unity-engine networking network-system integer-message)
  (export new
          is?
          integer-message?
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
             UnityEngine.Networking.NetworkSystem.IntegerMessage
             a
             ...)))))
  (define (is? a)
    (clr-is UnityEngine.Networking.NetworkSystem.IntegerMessage a))
  (define (integer-message? a)
    (clr-is UnityEngine.Networking.NetworkSystem.IntegerMessage a))
  (define-method-port
    deserialize
    UnityEngine.Networking.NetworkSystem.IntegerMessage
    Deserialize
    (System.Void UnityEngine.Networking.NetworkReader))
  (define-method-port
    serialize
    UnityEngine.Networking.NetworkSystem.IntegerMessage
    Serialize
    (System.Void UnityEngine.Networking.NetworkWriter))
  (define-field-port
    value-get
    value-set!
    value-update!
    ()
    UnityEngine.Networking.NetworkSystem.IntegerMessage
    value
    System.Int32))
