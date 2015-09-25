(library (unity-engine guiaspect-sizer)
  (export new is? guiaspect-sizer? calc-height)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.GUIAspectSizer a ...)))))
  (define (is? a) (clr-is UnityEngine.GUIAspectSizer a))
  (define (guiaspect-sizer? a) (clr-is UnityEngine.GUIAspectSizer a))
  (define-method-port
    calc-height
    UnityEngine.GUIAspectSizer
    CalcHeight
    (System.Void)))
