(library (unity-engine ui maskable-graphic)
  (export is?
          maskable-graphic?
          set-material-dirty
          parent-mask-state-changed
          maskable?-get
          maskable?-set!
          maskable?-update!
          material-get
          material-set!
          material-update!)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is UnityEngine.UI.MaskableGraphic a))
  (define (maskable-graphic? a)
    (clr-is UnityEngine.UI.MaskableGraphic a))
  (define-method-port
    set-material-dirty
    UnityEngine.UI.MaskableGraphic
    SetMaterialDirty
    (System.Void))
  (define-method-port
    parent-mask-state-changed
    UnityEngine.UI.MaskableGraphic
    ParentMaskStateChanged
    (System.Void))
  (define-field-port
    maskable?-get
    maskable?-set!
    maskable?-update!
    (property:)
    UnityEngine.UI.MaskableGraphic
    maskable
    System.Boolean)
  (define-field-port
    material-get
    material-set!
    material-update!
    (property:)
    UnityEngine.UI.MaskableGraphic
    material
    UnityEngine.Material))
