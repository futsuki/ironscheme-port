(library (unity-engine networking network-system empty-message)
  (export new is? empty-message? deserialize serialize)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             UnityEngine.Networking.NetworkSystem.EmptyMessage
             a
             ...)))))
  (define (is? a)
    (clr-is UnityEngine.Networking.NetworkSystem.EmptyMessage a))
  (define (empty-message? a)
    (clr-is UnityEngine.Networking.NetworkSystem.EmptyMessage a))
  (define-method-port
    deserialize
    UnityEngine.Networking.NetworkSystem.EmptyMessage
    Deserialize
    (System.Void UnityEngine.Networking.NetworkReader))
  (define-method-port
    serialize
    UnityEngine.Networking.NetworkSystem.EmptyMessage
    Serialize
    (System.Void UnityEngine.Networking.NetworkWriter)))
