(library (unity-engine ui vertical-layout-group)
  (export is?
          vertical-layout-group?
          calculate-layout-input-vertical
          calculate-layout-input-horizontal
          set-layout-vertical
          set-layout-horizontal)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is UnityEngine.UI.VerticalLayoutGroup a))
  (define (vertical-layout-group? a)
    (clr-is UnityEngine.UI.VerticalLayoutGroup a))
  (define-method-port
    calculate-layout-input-vertical
    UnityEngine.UI.VerticalLayoutGroup
    CalculateLayoutInputVertical
    (System.Void))
  (define-method-port
    calculate-layout-input-horizontal
    UnityEngine.UI.VerticalLayoutGroup
    CalculateLayoutInputHorizontal
    (System.Void))
  (define-method-port
    set-layout-vertical
    UnityEngine.UI.VerticalLayoutGroup
    SetLayoutVertical
    (System.Void))
  (define-method-port
    set-layout-horizontal
    UnityEngine.UI.VerticalLayoutGroup
    SetLayoutHorizontal
    (System.Void)))
