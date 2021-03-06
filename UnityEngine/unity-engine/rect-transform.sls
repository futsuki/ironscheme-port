(library (unity-engine rect-transform)
  (export new
          is?
          rect-transform?
          get-local-corners
          set-inset-and-size-from-parent-edge
          set-size-with-current-anchors
          get-world-corners
          rect
          anchor-min-get
          anchor-min-set!
          anchor-min-update!
          anchor-max-get
          anchor-max-set!
          anchor-max-update!
          anchored-position3-d-get
          anchored-position3-d-set!
          anchored-position3-d-update!
          anchored-position-get
          anchored-position-set!
          anchored-position-update!
          size-delta-get
          size-delta-set!
          size-delta-update!
          pivot-get
          pivot-set!
          pivot-update!
          offset-min-get
          offset-min-set!
          offset-min-update!
          offset-max-get
          offset-max-set!
          offset-max-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.RectTransform a ...)))))
  (define (is? a) (clr-is UnityEngine.RectTransform a))
  (define (rect-transform? a) (clr-is UnityEngine.RectTransform a))
  (define-method-port
    get-local-corners
    UnityEngine.RectTransform
    GetLocalCorners
    (System.Void UnityEngine.Vector3[]))
  (define-method-port
    set-inset-and-size-from-parent-edge
    UnityEngine.RectTransform
    SetInsetAndSizeFromParentEdge
    (System.Void
      UnityEngine.RectTransform+Edge
      System.Single
      System.Single))
  (define-method-port
    set-size-with-current-anchors
    UnityEngine.RectTransform
    SetSizeWithCurrentAnchors
    (System.Void UnityEngine.RectTransform+Axis System.Single))
  (define-method-port
    get-world-corners
    UnityEngine.RectTransform
    GetWorldCorners
    (System.Void UnityEngine.Vector3[]))
  (define-field-port
    rect
    #f
    #f
    (property:)
    UnityEngine.RectTransform
    rect
    UnityEngine.Rect)
  (define-field-port
    anchor-min-get
    anchor-min-set!
    anchor-min-update!
    (property:)
    UnityEngine.RectTransform
    anchorMin
    UnityEngine.Vector2)
  (define-field-port
    anchor-max-get
    anchor-max-set!
    anchor-max-update!
    (property:)
    UnityEngine.RectTransform
    anchorMax
    UnityEngine.Vector2)
  (define-field-port
    anchored-position3-d-get
    anchored-position3-d-set!
    anchored-position3-d-update!
    (property:)
    UnityEngine.RectTransform
    anchoredPosition3D
    UnityEngine.Vector3)
  (define-field-port
    anchored-position-get
    anchored-position-set!
    anchored-position-update!
    (property:)
    UnityEngine.RectTransform
    anchoredPosition
    UnityEngine.Vector2)
  (define-field-port
    size-delta-get
    size-delta-set!
    size-delta-update!
    (property:)
    UnityEngine.RectTransform
    sizeDelta
    UnityEngine.Vector2)
  (define-field-port
    pivot-get
    pivot-set!
    pivot-update!
    (property:)
    UnityEngine.RectTransform
    pivot
    UnityEngine.Vector2)
  (define-field-port
    offset-min-get
    offset-min-set!
    offset-min-update!
    (property:)
    UnityEngine.RectTransform
    offsetMin
    UnityEngine.Vector2)
  (define-field-port
    offset-max-get
    offset-max-set!
    offset-max-update!
    (property:)
    UnityEngine.RectTransform
    offsetMax
    UnityEngine.Vector2))
