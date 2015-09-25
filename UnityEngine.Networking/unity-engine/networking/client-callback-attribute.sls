(library (unity-engine networking client-callback-attribute)
  (export new is? client-callback-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             UnityEngine.Networking.ClientCallbackAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is UnityEngine.Networking.ClientCallbackAttribute a))
  (define (client-callback-attribute? a)
    (clr-is UnityEngine.Networking.ClientCallbackAttribute a)))
