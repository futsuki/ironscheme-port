(library (unity-engine event-systems base-raycaster)
  (export is?
          base-raycaster?
          raycast
          event-camera
          priority
          sort-order-priority
          render-order-priority)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is UnityEngine.EventSystems.BaseRaycaster a))
  (define (base-raycaster? a)
    (clr-is UnityEngine.EventSystems.BaseRaycaster a))
  (define-method-port
    raycast
    UnityEngine.EventSystems.BaseRaycaster
    Raycast)
  (define-field-port
    event-camera
    #f
    #f
    (property:)
    UnityEngine.EventSystems.BaseRaycaster
    eventCamera
    UnityEngine.Camera)
  (define-field-port
    priority
    #f
    #f
    (property:)
    UnityEngine.EventSystems.BaseRaycaster
    priority
    System.Int32)
  (define-field-port
    sort-order-priority
    #f
    #f
    (property:)
    UnityEngine.EventSystems.BaseRaycaster
    sortOrderPriority
    System.Int32)
  (define-field-port
    render-order-priority
    #f
    #f
    (property:)
    UnityEngine.EventSystems.BaseRaycaster
    renderOrderPriority
    System.Int32))
