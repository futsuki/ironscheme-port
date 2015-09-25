(library (unity-engine event-systems physics-raycaster)
  (export is?
          physics-raycaster?
          raycast
          event-camera
          depth
          final-event-mask
          event-mask-get
          event-mask-set!
          event-mask-update!)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is UnityEngine.EventSystems.PhysicsRaycaster a))
  (define (physics-raycaster? a)
    (clr-is UnityEngine.EventSystems.PhysicsRaycaster a))
  (define-method-port
    raycast
    UnityEngine.EventSystems.PhysicsRaycaster
    Raycast)
  (define-field-port
    event-camera
    #f
    #f
    (property:)
    UnityEngine.EventSystems.PhysicsRaycaster
    eventCamera
    UnityEngine.Camera)
  (define-field-port
    depth
    #f
    #f
    (property:)
    UnityEngine.EventSystems.PhysicsRaycaster
    depth
    System.Int32)
  (define-field-port
    final-event-mask
    #f
    #f
    (property:)
    UnityEngine.EventSystems.PhysicsRaycaster
    finalEventMask
    System.Int32)
  (define-field-port
    event-mask-get
    event-mask-set!
    event-mask-update!
    (property:)
    UnityEngine.EventSystems.PhysicsRaycaster
    eventMask
    UnityEngine.LayerMask))
