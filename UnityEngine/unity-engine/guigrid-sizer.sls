(library (unity-engine guigrid-sizer)
  (export is? guigrid-sizer? get-rect)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is UnityEngine.GUIGridSizer a))
  (define (guigrid-sizer? a) (clr-is UnityEngine.GUIGridSizer a))
  (define-method-port
    get-rect
    UnityEngine.GUIGridSizer
    GetRect
    (static:
      UnityEngine.Rect
      UnityEngine.GUIContent[]
      System.Int32
      UnityEngine.GUIStyle
      UnityEngine.GUILayoutOption[])))
