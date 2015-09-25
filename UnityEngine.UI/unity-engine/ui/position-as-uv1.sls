(library (unity-engine ui position-as-uv1)
  (export is? position-as-uv1? modify-vertices)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is UnityEngine.UI.PositionAsUV1 a))
  (define (position-as-uv1? a) (clr-is UnityEngine.UI.PositionAsUV1 a))
  (define-method-port
    modify-vertices
    UnityEngine.UI.PositionAsUV1
    ModifyVertices))
