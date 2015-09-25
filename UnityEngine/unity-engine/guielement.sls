(library (unity-engine guielement)
  (export new is? guielement? hit-test? get-screen-rect)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.GUIElement a ...)))))
  (define (is? a) (clr-is UnityEngine.GUIElement a))
  (define (guielement? a) (clr-is UnityEngine.GUIElement a))
  (define-method-port
    hit-test?
    UnityEngine.GUIElement
    HitTest
    (System.Boolean UnityEngine.Vector3)
    (System.Boolean UnityEngine.Vector3 UnityEngine.Camera))
  (define-method-port
    get-screen-rect
    UnityEngine.GUIElement
    GetScreenRect
    (UnityEngine.Rect)
    (UnityEngine.Rect UnityEngine.Camera)))
