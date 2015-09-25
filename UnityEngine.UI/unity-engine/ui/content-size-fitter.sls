(library (unity-engine ui content-size-fitter)
  (export is?
          content-size-fitter?
          set-layout-vertical
          set-layout-horizontal
          horizontal-fit-get
          horizontal-fit-set!
          horizontal-fit-update!
          vertical-fit-get
          vertical-fit-set!
          vertical-fit-update!)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is UnityEngine.UI.ContentSizeFitter a))
  (define (content-size-fitter? a)
    (clr-is UnityEngine.UI.ContentSizeFitter a))
  (define-method-port
    set-layout-vertical
    UnityEngine.UI.ContentSizeFitter
    SetLayoutVertical
    (System.Void))
  (define-method-port
    set-layout-horizontal
    UnityEngine.UI.ContentSizeFitter
    SetLayoutHorizontal
    (System.Void))
  (define-field-port
    horizontal-fit-get
    horizontal-fit-set!
    horizontal-fit-update!
    (property:)
    UnityEngine.UI.ContentSizeFitter
    horizontalFit
    UnityEngine.UI.ContentSizeFitter+FitMode)
  (define-field-port
    vertical-fit-get
    vertical-fit-set!
    vertical-fit-update!
    (property:)
    UnityEngine.UI.ContentSizeFitter
    verticalFit
    UnityEngine.UI.ContentSizeFitter+FitMode))
