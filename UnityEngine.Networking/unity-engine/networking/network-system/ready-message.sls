(library (unity-engine networking network-system ready-message)
  (export new is? ready-message?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             UnityEngine.Networking.NetworkSystem.ReadyMessage
             a
             ...)))))
  (define (is? a)
    (clr-is UnityEngine.Networking.NetworkSystem.ReadyMessage a))
  (define (ready-message? a)
    (clr-is UnityEngine.Networking.NetworkSystem.ReadyMessage a)))
