(library (unity-engine ui shadow)
  (export is?
          shadow?
          modify-vertices
          effect-color-get
          effect-color-set!
          effect-color-update!
          effect-distance-get
          effect-distance-set!
          effect-distance-update!
          use-graphic-alpha?-get
          use-graphic-alpha?-set!
          use-graphic-alpha?-update!)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is UnityEngine.UI.Shadow a))
  (define (shadow? a) (clr-is UnityEngine.UI.Shadow a))
  (define-method-port
    modify-vertices
    UnityEngine.UI.Shadow
    ModifyVertices)
  (define-field-port
    effect-color-get
    effect-color-set!
    effect-color-update!
    (property:)
    UnityEngine.UI.Shadow
    effectColor
    UnityEngine.Color)
  (define-field-port
    effect-distance-get
    effect-distance-set!
    effect-distance-update!
    (property:)
    UnityEngine.UI.Shadow
    effectDistance
    UnityEngine.Vector2)
  (define-field-port
    use-graphic-alpha?-get
    use-graphic-alpha?-set!
    use-graphic-alpha?-update!
    (property:)
    UnityEngine.UI.Shadow
    useGraphicAlpha
    System.Boolean))
