(library (unity-engine networking match drop-connection-request)
  (export new
          is?
          drop-connection-request?
          is-valid?
          to-string
          network-id-get
          network-id-set!
          network-id-update!
          node-id-get
          node-id-set!
          node-id-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             UnityEngine.Networking.Match.DropConnectionRequest
             a
             ...)))))
  (define (is? a)
    (clr-is UnityEngine.Networking.Match.DropConnectionRequest a))
  (define (drop-connection-request? a)
    (clr-is UnityEngine.Networking.Match.DropConnectionRequest a))
  (define-method-port
    is-valid?
    UnityEngine.Networking.Match.DropConnectionRequest
    IsValid
    (System.Boolean))
  (define-method-port
    to-string
    UnityEngine.Networking.Match.DropConnectionRequest
    ToString
    (System.String))
  (define-field-port
    network-id-get
    network-id-set!
    network-id-update!
    (property:)
    UnityEngine.Networking.Match.DropConnectionRequest
    networkId
    UnityEngine.Networking.Types.NetworkID)
  (define-field-port
    node-id-get
    node-id-set!
    node-id-update!
    (property:)
    UnityEngine.Networking.Match.DropConnectionRequest
    nodeId
    UnityEngine.Networking.Types.NodeID))
