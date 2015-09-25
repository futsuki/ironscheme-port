(library (unity-engine networking match destroy-match-request)
  (export new
          is?
          destroy-match-request?
          is-valid?
          to-string
          network-id-get
          network-id-set!
          network-id-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             UnityEngine.Networking.Match.DestroyMatchRequest
             a
             ...)))))
  (define (is? a)
    (clr-is UnityEngine.Networking.Match.DestroyMatchRequest a))
  (define (destroy-match-request? a)
    (clr-is UnityEngine.Networking.Match.DestroyMatchRequest a))
  (define-method-port
    is-valid?
    UnityEngine.Networking.Match.DestroyMatchRequest
    IsValid
    (System.Boolean))
  (define-method-port
    to-string
    UnityEngine.Networking.Match.DestroyMatchRequest
    ToString
    (System.String))
  (define-field-port
    network-id-get
    network-id-set!
    network-id-update!
    (property:)
    UnityEngine.Networking.Match.DestroyMatchRequest
    networkId
    UnityEngine.Networking.Types.NetworkID))
