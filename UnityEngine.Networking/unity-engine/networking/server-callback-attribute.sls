(library (unity-engine networking server-callback-attribute)
  (export new is? server-callback-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             UnityEngine.Networking.ServerCallbackAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is UnityEngine.Networking.ServerCallbackAttribute a))
  (define (server-callback-attribute? a)
    (clr-is UnityEngine.Networking.ServerCallbackAttribute a)))
