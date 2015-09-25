(library (unity-engine event-systems uibehaviour)
  (export is? uibehaviour? is-destroyed? is-active?)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is UnityEngine.EventSystems.UIBehaviour a))
  (define (uibehaviour? a)
    (clr-is UnityEngine.EventSystems.UIBehaviour a))
  (define-method-port
    is-destroyed?
    UnityEngine.EventSystems.UIBehaviour
    IsDestroyed
    (System.Boolean))
  (define-method-port
    is-active?
    UnityEngine.EventSystems.UIBehaviour
    IsActive
    (System.Boolean)))
