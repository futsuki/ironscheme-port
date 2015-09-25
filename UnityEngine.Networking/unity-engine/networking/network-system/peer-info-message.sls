(library (unity-engine networking network-system peer-info-message)
  (export new
          is?
          peer-info-message?
          deserialize
          serialize
          connection-id-get
          connection-id-set!
          connection-id-update!
          address-get
          address-set!
          address-update!
          port-get
          port-set!
          port-update!
          is-host?-get
          is-host?-set!
          is-host?-update!
          is-you?-get
          is-you?-set!
          is-you?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             UnityEngine.Networking.NetworkSystem.PeerInfoMessage
             a
             ...)))))
  (define (is? a)
    (clr-is UnityEngine.Networking.NetworkSystem.PeerInfoMessage a))
  (define (peer-info-message? a)
    (clr-is UnityEngine.Networking.NetworkSystem.PeerInfoMessage a))
  (define-method-port
    deserialize
    UnityEngine.Networking.NetworkSystem.PeerInfoMessage
    Deserialize
    (System.Void UnityEngine.Networking.NetworkReader))
  (define-method-port
    serialize
    UnityEngine.Networking.NetworkSystem.PeerInfoMessage
    Serialize
    (System.Void UnityEngine.Networking.NetworkWriter))
  (define-field-port
    connection-id-get
    connection-id-set!
    connection-id-update!
    ()
    UnityEngine.Networking.NetworkSystem.PeerInfoMessage
    connectionId
    System.Int32)
  (define-field-port
    address-get
    address-set!
    address-update!
    ()
    UnityEngine.Networking.NetworkSystem.PeerInfoMessage
    address
    System.String)
  (define-field-port
    port-get
    port-set!
    port-update!
    ()
    UnityEngine.Networking.NetworkSystem.PeerInfoMessage
    port
    System.Int32)
  (define-field-port
    is-host?-get
    is-host?-set!
    is-host?-update!
    ()
    UnityEngine.Networking.NetworkSystem.PeerInfoMessage
    isHost
    System.Boolean)
  (define-field-port
    is-you?-get
    is-you?-set!
    is-you?-update!
    ()
    UnityEngine.Networking.NetworkSystem.PeerInfoMessage
    isYou
    System.Boolean))
