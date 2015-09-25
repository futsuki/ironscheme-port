(library (unity-engine guistate-objects)
  (export new is? guistate-objects?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.GUIStateObjects a ...)))))
  (define (is? a) (clr-is UnityEngine.GUIStateObjects a))
  (define (guistate-objects? a) (clr-is UnityEngine.GUIStateObjects a)))
