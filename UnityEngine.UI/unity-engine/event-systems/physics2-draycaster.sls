(library (unity-engine event-systems physics2-draycaster)
  (export is? physics2-draycaster? raycast)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is UnityEngine.EventSystems.Physics2DRaycaster a))
  (define (physics2-draycaster? a)
    (clr-is UnityEngine.EventSystems.Physics2DRaycaster a))
  (define-method-port
    raycast
    UnityEngine.EventSystems.Physics2DRaycaster
    Raycast))
