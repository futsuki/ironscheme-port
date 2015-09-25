(library (unity-engine networking match stop-dedicated-match-request)
  (export new
          is?
          stop-dedicated-match-request?
          network-id-get
          network-id-set!
          network-id-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             UnityEngine.Networking.Match.StopDedicatedMatchRequest
             a
             ...)))))
  (define (is? a)
    (clr-is UnityEngine.Networking.Match.StopDedicatedMatchRequest a))
  (define (stop-dedicated-match-request? a)
    (clr-is UnityEngine.Networking.Match.StopDedicatedMatchRequest a))
  (define-field-port
    network-id-get
    network-id-set!
    network-id-update!
    (property:)
    UnityEngine.Networking.Match.StopDedicatedMatchRequest
    networkId
    UnityEngine.Networking.Types.NetworkID))
