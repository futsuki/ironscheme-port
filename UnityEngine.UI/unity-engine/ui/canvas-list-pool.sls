(library (unity-engine ui canvas-list-pool)
  (export is? canvas-list-pool? get release)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is UnityEngine.UI.CanvasListPool a))
  (define (canvas-list-pool? a)
    (clr-is UnityEngine.UI.CanvasListPool a))
  (define-method-port
    get
    UnityEngine.UI.CanvasListPool
    Get
    (static:
      "System.Collections.Generic.List`1[[UnityEngine.Canvas, UnityEngine, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null]]"))
  (define-method-port release UnityEngine.UI.CanvasListPool Release))
