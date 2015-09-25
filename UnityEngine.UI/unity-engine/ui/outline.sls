(library (unity-engine ui outline)
  (export is? outline? modify-vertices)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is UnityEngine.UI.Outline a))
  (define (outline? a) (clr-is UnityEngine.UI.Outline a))
  (define-method-port
    modify-vertices
    UnityEngine.UI.Outline
    ModifyVertices))
