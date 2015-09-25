(library (unity-engine networking network-system not-ready-message)
  (export new is? not-ready-message?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             UnityEngine.Networking.NetworkSystem.NotReadyMessage
             a
             ...)))))
  (define (is? a)
    (clr-is UnityEngine.Networking.NetworkSystem.NotReadyMessage a))
  (define (not-ready-message? a)
    (clr-is UnityEngine.Networking.NetworkSystem.NotReadyMessage a)))
