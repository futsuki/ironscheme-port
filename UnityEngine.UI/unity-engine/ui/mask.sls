(library (unity-engine ui mask)
  (export is?
          mask?
          mask-enabled?
          get-modified-material
          on-sibling-graphic-enabled-disabled
          is-raycast-location-valid?
          show-mask-graphic?-get
          show-mask-graphic?-set!
          show-mask-graphic?-update!
          rect-transform)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is UnityEngine.UI.Mask a))
  (define (mask? a) (clr-is UnityEngine.UI.Mask a))
  (define-method-port
    mask-enabled?
    UnityEngine.UI.Mask
    MaskEnabled
    (System.Boolean))
  (define-method-port
    get-modified-material
    UnityEngine.UI.Mask
    GetModifiedMaterial
    (UnityEngine.Material UnityEngine.Material))
  (define-method-port
    on-sibling-graphic-enabled-disabled
    UnityEngine.UI.Mask
    OnSiblingGraphicEnabledDisabled
    (System.Void))
  (define-method-port
    is-raycast-location-valid?
    UnityEngine.UI.Mask
    IsRaycastLocationValid
    (System.Boolean UnityEngine.Vector2 UnityEngine.Camera))
  (define-field-port
    show-mask-graphic?-get
    show-mask-graphic?-set!
    show-mask-graphic?-update!
    (property:)
    UnityEngine.UI.Mask
    showMaskGraphic
    System.Boolean)
  (define-field-port
    rect-transform
    #f
    #f
    (property:)
    UnityEngine.UI.Mask
    rectTransform
    UnityEngine.RectTransform))
