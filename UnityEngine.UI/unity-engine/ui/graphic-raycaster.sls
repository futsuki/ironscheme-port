(library (unity-engine ui graphic-raycaster)
  (export is?
          graphic-raycaster?
          raycast
          sort-order-priority
          render-order-priority
          ignore-reversed-graphics?-get
          ignore-reversed-graphics?-set!
          ignore-reversed-graphics?-update!
          blocking-objects-get
          blocking-objects-set!
          blocking-objects-update!
          event-camera)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is UnityEngine.UI.GraphicRaycaster a))
  (define (graphic-raycaster? a)
    (clr-is UnityEngine.UI.GraphicRaycaster a))
  (define-method-port raycast UnityEngine.UI.GraphicRaycaster Raycast)
  (define-field-port
    sort-order-priority
    #f
    #f
    (property:)
    UnityEngine.UI.GraphicRaycaster
    sortOrderPriority
    System.Int32)
  (define-field-port
    render-order-priority
    #f
    #f
    (property:)
    UnityEngine.UI.GraphicRaycaster
    renderOrderPriority
    System.Int32)
  (define-field-port
    ignore-reversed-graphics?-get
    ignore-reversed-graphics?-set!
    ignore-reversed-graphics?-update!
    (property:)
    UnityEngine.UI.GraphicRaycaster
    ignoreReversedGraphics
    System.Boolean)
  (define-field-port
    blocking-objects-get
    blocking-objects-set!
    blocking-objects-update!
    (property:)
    UnityEngine.UI.GraphicRaycaster
    blockingObjects
    UnityEngine.UI.GraphicRaycaster+BlockingObjects)
  (define-field-port
    event-camera
    #f
    #f
    (property:)
    UnityEngine.UI.GraphicRaycaster
    eventCamera
    UnityEngine.Camera))
