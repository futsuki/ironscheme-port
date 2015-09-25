(library (unity-engine ui base-vertex-effect)
  (export is? base-vertex-effect? modify-vertices)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is UnityEngine.UI.BaseVertexEffect a))
  (define (base-vertex-effect? a)
    (clr-is UnityEngine.UI.BaseVertexEffect a))
  (define-method-port
    modify-vertices
    UnityEngine.UI.BaseVertexEffect
    ModifyVertices))
