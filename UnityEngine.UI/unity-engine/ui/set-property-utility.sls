(library (unity-engine ui set-property-utility)
  (export is? set-property-utility? set-color? set-class? set-struct?)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is UnityEngine.UI.SetPropertyUtility a))
  (define (set-property-utility? a)
    (clr-is UnityEngine.UI.SetPropertyUtility a))
  (define-method-port
    set-color?
    UnityEngine.UI.SetPropertyUtility
    SetColor
    (static: System.Boolean UnityEngine.Color& UnityEngine.Color))
  (define-method-port
    set-class?
    UnityEngine.UI.SetPropertyUtility
    SetClass)
  (define-method-port
    set-struct?
    UnityEngine.UI.SetPropertyUtility
    SetStruct))
