(library (unity-engine networking message-base)
  (export is? message-base? deserialize serialize)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is UnityEngine.Networking.MessageBase a))
  (define (message-base? a)
    (clr-is UnityEngine.Networking.MessageBase a))
  (define-method-port
    deserialize
    UnityEngine.Networking.MessageBase
    Deserialize
    (System.Void UnityEngine.Networking.NetworkReader))
  (define-method-port
    serialize
    UnityEngine.Networking.MessageBase
    Serialize
    (System.Void UnityEngine.Networking.NetworkWriter)))
