(library (unity-engine event-systems pointer-event-data)
  (export new
          is?
          pointer-event-data?
          is-scrolling?
          is-pointer-moving?
          to-string
          hovered-get
          hovered-set!
          hovered-update!
          pointer-enter-get
          pointer-enter-set!
          pointer-enter-update!
          last-press
          raw-pointer-press-get
          raw-pointer-press-set!
          raw-pointer-press-update!
          pointer-drag-get
          pointer-drag-set!
          pointer-drag-update!
          pointer-current-raycast-get
          pointer-current-raycast-set!
          pointer-current-raycast-update!
          pointer-press-raycast-get
          pointer-press-raycast-set!
          pointer-press-raycast-update!
          eligible-for-click?-get
          eligible-for-click?-set!
          eligible-for-click?-update!
          pointer-id-get
          pointer-id-set!
          pointer-id-update!
          position-get
          position-set!
          position-update!
          delta-get
          delta-set!
          delta-update!
          press-position-get
          press-position-set!
          press-position-update!
          world-position-get
          world-position-set!
          world-position-update!
          world-normal-get
          world-normal-set!
          world-normal-update!
          click-time-get
          click-time-set!
          click-time-update!
          click-count-get
          click-count-set!
          click-count-update!
          scroll-delta-get
          scroll-delta-set!
          scroll-delta-update!
          use-drag-threshold?-get
          use-drag-threshold?-set!
          use-drag-threshold?-update!
          dragging?-get
          dragging?-set!
          dragging?-update!
          button-get
          button-set!
          button-update!
          enter-event-camera
          press-event-camera
          pointer-press-get
          pointer-press-set!
          pointer-press-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new UnityEngine.EventSystems.PointerEventData a ...)))))
  (define (is? a) (clr-is UnityEngine.EventSystems.PointerEventData a))
  (define (pointer-event-data? a)
    (clr-is UnityEngine.EventSystems.PointerEventData a))
  (define-method-port
    is-scrolling?
    UnityEngine.EventSystems.PointerEventData
    IsScrolling
    (System.Boolean))
  (define-method-port
    is-pointer-moving?
    UnityEngine.EventSystems.PointerEventData
    IsPointerMoving
    (System.Boolean))
  (define-method-port
    to-string
    UnityEngine.EventSystems.PointerEventData
    ToString
    (System.String))
  (define-field-port
    hovered-get
    hovered-set!
    hovered-update!
    ()
    UnityEngine.EventSystems.PointerEventData
    hovered
    "System.Collections.Generic.List`1[[UnityEngine.GameObject, UnityEngine, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null]]")
  (define-field-port
    pointer-enter-get
    pointer-enter-set!
    pointer-enter-update!
    (property:)
    UnityEngine.EventSystems.PointerEventData
    pointerEnter
    UnityEngine.GameObject)
  (define-field-port
    last-press
    #f
    #f
    (property:)
    UnityEngine.EventSystems.PointerEventData
    lastPress
    UnityEngine.GameObject)
  (define-field-port
    raw-pointer-press-get
    raw-pointer-press-set!
    raw-pointer-press-update!
    (property:)
    UnityEngine.EventSystems.PointerEventData
    rawPointerPress
    UnityEngine.GameObject)
  (define-field-port
    pointer-drag-get
    pointer-drag-set!
    pointer-drag-update!
    (property:)
    UnityEngine.EventSystems.PointerEventData
    pointerDrag
    UnityEngine.GameObject)
  (define-field-port
    pointer-current-raycast-get
    pointer-current-raycast-set!
    pointer-current-raycast-update!
    (property:)
    UnityEngine.EventSystems.PointerEventData
    pointerCurrentRaycast
    UnityEngine.EventSystems.RaycastResult)
  (define-field-port
    pointer-press-raycast-get
    pointer-press-raycast-set!
    pointer-press-raycast-update!
    (property:)
    UnityEngine.EventSystems.PointerEventData
    pointerPressRaycast
    UnityEngine.EventSystems.RaycastResult)
  (define-field-port
    eligible-for-click?-get
    eligible-for-click?-set!
    eligible-for-click?-update!
    (property:)
    UnityEngine.EventSystems.PointerEventData
    eligibleForClick
    System.Boolean)
  (define-field-port
    pointer-id-get
    pointer-id-set!
    pointer-id-update!
    (property:)
    UnityEngine.EventSystems.PointerEventData
    pointerId
    System.Int32)
  (define-field-port
    position-get
    position-set!
    position-update!
    (property:)
    UnityEngine.EventSystems.PointerEventData
    position
    UnityEngine.Vector2)
  (define-field-port
    delta-get
    delta-set!
    delta-update!
    (property:)
    UnityEngine.EventSystems.PointerEventData
    delta
    UnityEngine.Vector2)
  (define-field-port
    press-position-get
    press-position-set!
    press-position-update!
    (property:)
    UnityEngine.EventSystems.PointerEventData
    pressPosition
    UnityEngine.Vector2)
  (define-field-port
    world-position-get
    world-position-set!
    world-position-update!
    (property:)
    UnityEngine.EventSystems.PointerEventData
    worldPosition
    UnityEngine.Vector3)
  (define-field-port
    world-normal-get
    world-normal-set!
    world-normal-update!
    (property:)
    UnityEngine.EventSystems.PointerEventData
    worldNormal
    UnityEngine.Vector3)
  (define-field-port
    click-time-get
    click-time-set!
    click-time-update!
    (property:)
    UnityEngine.EventSystems.PointerEventData
    clickTime
    System.Single)
  (define-field-port
    click-count-get
    click-count-set!
    click-count-update!
    (property:)
    UnityEngine.EventSystems.PointerEventData
    clickCount
    System.Int32)
  (define-field-port
    scroll-delta-get
    scroll-delta-set!
    scroll-delta-update!
    (property:)
    UnityEngine.EventSystems.PointerEventData
    scrollDelta
    UnityEngine.Vector2)
  (define-field-port
    use-drag-threshold?-get
    use-drag-threshold?-set!
    use-drag-threshold?-update!
    (property:)
    UnityEngine.EventSystems.PointerEventData
    useDragThreshold
    System.Boolean)
  (define-field-port
    dragging?-get
    dragging?-set!
    dragging?-update!
    (property:)
    UnityEngine.EventSystems.PointerEventData
    dragging
    System.Boolean)
  (define-field-port
    button-get
    button-set!
    button-update!
    (property:)
    UnityEngine.EventSystems.PointerEventData
    button
    UnityEngine.EventSystems.PointerEventData+InputButton)
  (define-field-port
    enter-event-camera
    #f
    #f
    (property:)
    UnityEngine.EventSystems.PointerEventData
    enterEventCamera
    UnityEngine.Camera)
  (define-field-port
    press-event-camera
    #f
    #f
    (property:)
    UnityEngine.EventSystems.PointerEventData
    pressEventCamera
    UnityEngine.Camera)
  (define-field-port
    pointer-press-get
    pointer-press-set!
    pointer-press-update!
    (property:)
    UnityEngine.EventSystems.PointerEventData
    pointerPress
    UnityEngine.GameObject))