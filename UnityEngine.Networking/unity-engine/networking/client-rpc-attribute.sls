(library (unity-engine networking client-rpc-attribute)
  (export new
          is?
          client-rpc-attribute?
          channel-get
          channel-set!
          channel-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new UnityEngine.Networking.ClientRpcAttribute a ...)))))
  (define (is? a) (clr-is UnityEngine.Networking.ClientRpcAttribute a))
  (define (client-rpc-attribute? a)
    (clr-is UnityEngine.Networking.ClientRpcAttribute a))
  (define-field-port
    channel-get
    channel-set!
    channel-update!
    ()
    UnityEngine.Networking.ClientRpcAttribute
    channel
    System.Int32))
