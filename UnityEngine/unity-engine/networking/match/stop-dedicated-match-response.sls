(library (unity-engine networking match stop-dedicated-match-response)
  (export new is? stop-dedicated-match-response?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             UnityEngine.Networking.Match.StopDedicatedMatchResponse
             a
             ...)))))
  (define (is? a)
    (clr-is UnityEngine.Networking.Match.StopDedicatedMatchResponse a))
  (define (stop-dedicated-match-response? a)
    (clr-is UnityEngine.Networking.Match.StopDedicatedMatchResponse a)))
