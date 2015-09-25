(library (unity-engine networking network-start-position)
  (export new is? network-start-position? awake on-destroy)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             UnityEngine.Networking.NetworkStartPosition
             a
             ...)))))
  (define (is? a)
    (clr-is UnityEngine.Networking.NetworkStartPosition a))
  (define (network-start-position? a)
    (clr-is UnityEngine.Networking.NetworkStartPosition a))
  (define-method-port
    awake
    UnityEngine.Networking.NetworkStartPosition
    Awake
    (System.Void))
  (define-method-port
    on-destroy
    UnityEngine.Networking.NetworkStartPosition
    OnDestroy
    (System.Void)))
