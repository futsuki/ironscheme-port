(library (unity-engine networking match create-or-join-match-request)
  (export new is? create-or-join-match-request?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             UnityEngine.Networking.Match.CreateOrJoinMatchRequest
             a
             ...)))))
  (define (is? a)
    (clr-is UnityEngine.Networking.Match.CreateOrJoinMatchRequest a))
  (define (create-or-join-match-request? a)
    (clr-is UnityEngine.Networking.Match.CreateOrJoinMatchRequest a)))
