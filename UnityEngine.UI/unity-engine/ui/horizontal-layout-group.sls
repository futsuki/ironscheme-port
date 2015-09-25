(library (unity-engine ui horizontal-layout-group)
  (export is?
          horizontal-layout-group?
          calculate-layout-input-vertical
          calculate-layout-input-horizontal
          set-layout-vertical
          set-layout-horizontal)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is UnityEngine.UI.HorizontalLayoutGroup a))
  (define (horizontal-layout-group? a)
    (clr-is UnityEngine.UI.HorizontalLayoutGroup a))
  (define-method-port
    calculate-layout-input-vertical
    UnityEngine.UI.HorizontalLayoutGroup
    CalculateLayoutInputVertical
    (System.Void))
  (define-method-port
    calculate-layout-input-horizontal
    UnityEngine.UI.HorizontalLayoutGroup
    CalculateLayoutInputHorizontal
    (System.Void))
  (define-method-port
    set-layout-vertical
    UnityEngine.UI.HorizontalLayoutGroup
    SetLayoutVertical
    (System.Void))
  (define-method-port
    set-layout-horizontal
    UnityEngine.UI.HorizontalLayoutGroup
    SetLayoutHorizontal
    (System.Void)))
