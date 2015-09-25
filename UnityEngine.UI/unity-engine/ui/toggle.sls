(library (unity-engine ui toggle)
  (export is?
          toggle?
          on-submit
          rebuild
          on-pointer-click
          toggle-transition-get
          toggle-transition-set!
          toggle-transition-update!
          graphic-get
          graphic-set!
          graphic-update!
          on-value-changed-get
          on-value-changed-set!
          on-value-changed-update!
          group-get
          group-set!
          group-update!
          is-on?-get
          is-on?-set!
          is-on?-update!)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is UnityEngine.UI.Toggle a))
  (define (toggle? a) (clr-is UnityEngine.UI.Toggle a))
  (define-method-port
    on-submit
    UnityEngine.UI.Toggle
    OnSubmit
    (System.Void UnityEngine.EventSystems.BaseEventData))
  (define-method-port
    rebuild
    UnityEngine.UI.Toggle
    Rebuild
    (System.Void UnityEngine.UI.CanvasUpdate))
  (define-method-port
    on-pointer-click
    UnityEngine.UI.Toggle
    OnPointerClick
    (System.Void UnityEngine.EventSystems.PointerEventData))
  (define-field-port
    toggle-transition-get
    toggle-transition-set!
    toggle-transition-update!
    ()
    UnityEngine.UI.Toggle
    toggleTransition
    UnityEngine.UI.Toggle+ToggleTransition)
  (define-field-port
    graphic-get
    graphic-set!
    graphic-update!
    ()
    UnityEngine.UI.Toggle
    graphic
    UnityEngine.UI.Graphic)
  (define-field-port
    on-value-changed-get
    on-value-changed-set!
    on-value-changed-update!
    ()
    UnityEngine.UI.Toggle
    onValueChanged
    UnityEngine.UI.Toggle+ToggleEvent)
  (define-field-port
    group-get
    group-set!
    group-update!
    (property:)
    UnityEngine.UI.Toggle
    group
    UnityEngine.UI.ToggleGroup)
  (define-field-port
    is-on?-get
    is-on?-set!
    is-on?-update!
    (property:)
    UnityEngine.UI.Toggle
    isOn
    System.Boolean))
