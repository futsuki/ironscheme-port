(library (unity-engine networking local-client)
  (export new is? local-client? disconnect)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new UnityEngine.Networking.LocalClient a ...)))))
  (define (is? a) (clr-is UnityEngine.Networking.LocalClient a))
  (define (local-client? a)
    (clr-is UnityEngine.Networking.LocalClient a))
  (define-method-port
    disconnect
    UnityEngine.Networking.LocalClient
    Disconnect
    (System.Void)))
