(library (unity-engine guiword-wrap-sizer)
  (export new is? guiword-wrap-sizer? calc-height calc-width)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.GUIWordWrapSizer a ...)))))
  (define (is? a) (clr-is UnityEngine.GUIWordWrapSizer a))
  (define (guiword-wrap-sizer? a)
    (clr-is UnityEngine.GUIWordWrapSizer a))
  (define-method-port
    calc-height
    UnityEngine.GUIWordWrapSizer
    CalcHeight
    (System.Void))
  (define-method-port
    calc-width
    UnityEngine.GUIWordWrapSizer
    CalcWidth
    (System.Void)))
