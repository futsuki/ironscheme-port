(library (unity-engine networking network-system peer-list-message)
  (export new
          is?
          peer-list-message?
          deserialize
          serialize
          peers-get
          peers-set!
          peers-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             UnityEngine.Networking.NetworkSystem.PeerListMessage
             a
             ...)))))
  (define (is? a)
    (clr-is UnityEngine.Networking.NetworkSystem.PeerListMessage a))
  (define (peer-list-message? a)
    (clr-is UnityEngine.Networking.NetworkSystem.PeerListMessage a))
  (define-method-port
    deserialize
    UnityEngine.Networking.NetworkSystem.PeerListMessage
    Deserialize
    (System.Void UnityEngine.Networking.NetworkReader))
  (define-method-port
    serialize
    UnityEngine.Networking.NetworkSystem.PeerListMessage
    Serialize
    (System.Void UnityEngine.Networking.NetworkWriter))
  (define-field-port
    peers-get
    peers-set!
    peers-update!
    ()
    UnityEngine.Networking.NetworkSystem.PeerListMessage
    peers
    UnityEngine.Networking.NetworkSystem.PeerInfoMessage[]))
