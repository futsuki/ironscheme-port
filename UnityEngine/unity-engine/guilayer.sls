(library (unity-engine guilayer)
  (export new is? guilayer? hit-test)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.GUILayer a ...)))))
  (define (is? a) (clr-is UnityEngine.GUILayer a))
  (define (guilayer? a) (clr-is UnityEngine.GUILayer a))
  (define-method-port
    hit-test
    UnityEngine.GUILayer
    HitTest
    (UnityEngine.GUIElement UnityEngine.Vector3)))
