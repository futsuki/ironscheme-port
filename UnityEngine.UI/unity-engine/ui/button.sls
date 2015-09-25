(library (unity-engine ui button)
  (export is?
          button?
          on-submit
          on-pointer-click
          on-click-get
          on-click-set!
          on-click-update!)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is UnityEngine.UI.Button a))
  (define (button? a) (clr-is UnityEngine.UI.Button a))
  (define-method-port
    on-submit
    UnityEngine.UI.Button
    OnSubmit
    (System.Void UnityEngine.EventSystems.BaseEventData))
  (define-method-port
    on-pointer-click
    UnityEngine.UI.Button
    OnPointerClick
    (System.Void UnityEngine.EventSystems.PointerEventData))
  (define-field-port
    on-click-get
    on-click-set!
    on-click-update!
    (property:)
    UnityEngine.UI.Button
    onClick
    UnityEngine.UI.Button+ButtonClickedEvent))
