(library (unity-engine networking network-scene)
  (export new is? network-scene? unregister-spawn-handler)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new UnityEngine.Networking.NetworkScene a ...)))))
  (define (is? a) (clr-is UnityEngine.Networking.NetworkScene a))
  (define (network-scene? a)
    (clr-is UnityEngine.Networking.NetworkScene a))
  (define-method-port
    unregister-spawn-handler
    UnityEngine.Networking.NetworkScene
    UnregisterSpawnHandler
    (static: System.Void UnityEngine.Networking.NetworkHash128)))
