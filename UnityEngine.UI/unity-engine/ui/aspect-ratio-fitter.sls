(library (unity-engine ui aspect-ratio-fitter)
  (export is?
          aspect-ratio-fitter?
          set-layout-vertical
          set-layout-horizontal
          aspect-mode-get
          aspect-mode-set!
          aspect-mode-update!
          aspect-ratio-get
          aspect-ratio-set!
          aspect-ratio-update!)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is UnityEngine.UI.AspectRatioFitter a))
  (define (aspect-ratio-fitter? a)
    (clr-is UnityEngine.UI.AspectRatioFitter a))
  (define-method-port
    set-layout-vertical
    UnityEngine.UI.AspectRatioFitter
    SetLayoutVertical
    (System.Void))
  (define-method-port
    set-layout-horizontal
    UnityEngine.UI.AspectRatioFitter
    SetLayoutHorizontal
    (System.Void))
  (define-field-port
    aspect-mode-get
    aspect-mode-set!
    aspect-mode-update!
    (property:)
    UnityEngine.UI.AspectRatioFitter
    aspectMode
    UnityEngine.UI.AspectRatioFitter+AspectMode)
  (define-field-port
    aspect-ratio-get
    aspect-ratio-set!
    aspect-ratio-update!
    (property:)
    UnityEngine.UI.AspectRatioFitter
    aspectRatio
    System.Single))
