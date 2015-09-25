(library (unity-engine networking client-attribute)
  (export new is? client-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new UnityEngine.Networking.ClientAttribute a ...)))))
  (define (is? a) (clr-is UnityEngine.Networking.ClientAttribute a))
  (define (client-attribute? a)
    (clr-is UnityEngine.Networking.ClientAttribute a)))
