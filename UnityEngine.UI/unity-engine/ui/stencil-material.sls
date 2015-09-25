(library (unity-engine ui stencil-material)
  (export is? stencil-material? add remove)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is UnityEngine.UI.StencilMaterial a))
  (define (stencil-material? a)
    (clr-is UnityEngine.UI.StencilMaterial a))
  (define-method-port
    add
    UnityEngine.UI.StencilMaterial
    Add
    (static: UnityEngine.Material UnityEngine.Material System.Int32))
  (define-method-port
    remove
    UnityEngine.UI.StencilMaterial
    Remove
    (static: System.Void UnityEngine.Material)))
