(library (unity-engine ui scroll-rect)
  (export is?
          scroll-rect?
          on-scroll
          on-end-drag
          on-begin-drag
          on-initialize-potential-drag
          on-drag
          rebuild
          is-active?
          stop-movement
          content-get
          content-set!
          content-update!
          horizontal?-get
          horizontal?-set!
          horizontal?-update!
          vertical?-get
          vertical?-set!
          vertical?-update!
          movement-type-get
          movement-type-set!
          movement-type-update!
          elasticity-get
          elasticity-set!
          elasticity-update!
          inertia?-get
          inertia?-set!
          inertia?-update!
          deceleration-rate-get
          deceleration-rate-set!
          deceleration-rate-update!
          scroll-sensitivity-get
          scroll-sensitivity-set!
          scroll-sensitivity-update!
          horizontal-scrollbar-get
          horizontal-scrollbar-set!
          horizontal-scrollbar-update!
          vertical-scrollbar-get
          vertical-scrollbar-set!
          vertical-scrollbar-update!
          on-value-changed-get
          on-value-changed-set!
          on-value-changed-update!
          velocity-get
          velocity-set!
          velocity-update!
          normalized-position-get
          normalized-position-set!
          normalized-position-update!
          horizontal-normalized-position-get
          horizontal-normalized-position-set!
          horizontal-normalized-position-update!
          vertical-normalized-position-get
          vertical-normalized-position-set!
          vertical-normalized-position-update!)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is UnityEngine.UI.ScrollRect a))
  (define (scroll-rect? a) (clr-is UnityEngine.UI.ScrollRect a))
  (define-method-port
    on-scroll
    UnityEngine.UI.ScrollRect
    OnScroll
    (System.Void UnityEngine.EventSystems.PointerEventData))
  (define-method-port
    on-end-drag
    UnityEngine.UI.ScrollRect
    OnEndDrag
    (System.Void UnityEngine.EventSystems.PointerEventData))
  (define-method-port
    on-begin-drag
    UnityEngine.UI.ScrollRect
    OnBeginDrag
    (System.Void UnityEngine.EventSystems.PointerEventData))
  (define-method-port
    on-initialize-potential-drag
    UnityEngine.UI.ScrollRect
    OnInitializePotentialDrag
    (System.Void UnityEngine.EventSystems.PointerEventData))
  (define-method-port
    on-drag
    UnityEngine.UI.ScrollRect
    OnDrag
    (System.Void UnityEngine.EventSystems.PointerEventData))
  (define-method-port
    rebuild
    UnityEngine.UI.ScrollRect
    Rebuild
    (System.Void UnityEngine.UI.CanvasUpdate))
  (define-method-port
    is-active?
    UnityEngine.UI.ScrollRect
    IsActive
    (System.Boolean))
  (define-method-port
    stop-movement
    UnityEngine.UI.ScrollRect
    StopMovement
    (System.Void))
  (define-field-port
    content-get
    content-set!
    content-update!
    (property:)
    UnityEngine.UI.ScrollRect
    content
    UnityEngine.RectTransform)
  (define-field-port
    horizontal?-get
    horizontal?-set!
    horizontal?-update!
    (property:)
    UnityEngine.UI.ScrollRect
    horizontal
    System.Boolean)
  (define-field-port
    vertical?-get
    vertical?-set!
    vertical?-update!
    (property:)
    UnityEngine.UI.ScrollRect
    vertical
    System.Boolean)
  (define-field-port
    movement-type-get
    movement-type-set!
    movement-type-update!
    (property:)
    UnityEngine.UI.ScrollRect
    movementType
    UnityEngine.UI.ScrollRect+MovementType)
  (define-field-port
    elasticity-get
    elasticity-set!
    elasticity-update!
    (property:)
    UnityEngine.UI.ScrollRect
    elasticity
    System.Single)
  (define-field-port
    inertia?-get
    inertia?-set!
    inertia?-update!
    (property:)
    UnityEngine.UI.ScrollRect
    inertia
    System.Boolean)
  (define-field-port
    deceleration-rate-get
    deceleration-rate-set!
    deceleration-rate-update!
    (property:)
    UnityEngine.UI.ScrollRect
    decelerationRate
    System.Single)
  (define-field-port
    scroll-sensitivity-get
    scroll-sensitivity-set!
    scroll-sensitivity-update!
    (property:)
    UnityEngine.UI.ScrollRect
    scrollSensitivity
    System.Single)
  (define-field-port
    horizontal-scrollbar-get
    horizontal-scrollbar-set!
    horizontal-scrollbar-update!
    (property:)
    UnityEngine.UI.ScrollRect
    horizontalScrollbar
    UnityEngine.UI.Scrollbar)
  (define-field-port
    vertical-scrollbar-get
    vertical-scrollbar-set!
    vertical-scrollbar-update!
    (property:)
    UnityEngine.UI.ScrollRect
    verticalScrollbar
    UnityEngine.UI.Scrollbar)
  (define-field-port
    on-value-changed-get
    on-value-changed-set!
    on-value-changed-update!
    (property:)
    UnityEngine.UI.ScrollRect
    onValueChanged
    UnityEngine.UI.ScrollRect+ScrollRectEvent)
  (define-field-port
    velocity-get
    velocity-set!
    velocity-update!
    (property:)
    UnityEngine.UI.ScrollRect
    velocity
    UnityEngine.Vector2)
  (define-field-port
    normalized-position-get
    normalized-position-set!
    normalized-position-update!
    (property:)
    UnityEngine.UI.ScrollRect
    normalizedPosition
    UnityEngine.Vector2)
  (define-field-port
    horizontal-normalized-position-get
    horizontal-normalized-position-set!
    horizontal-normalized-position-update!
    (property:)
    UnityEngine.UI.ScrollRect
    horizontalNormalizedPosition
    System.Single)
  (define-field-port
    vertical-normalized-position-get
    vertical-normalized-position-set!
    vertical-normalized-position-update!
    (property:)
    UnityEngine.UI.ScrollRect
    verticalNormalizedPosition
    System.Single))
