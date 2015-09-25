(library (unity-engine event-systems event-trigger)
  (export is?
          event-trigger?
          on-scroll
          on-select
          on-end-drag
          on-pointer-down
          on-cancel
          on-initialize-potential-drag
          on-drag
          on-pointer-enter
          on-submit
          on-drop
          on-pointer-click
          on-begin-drag
          on-pointer-up
          on-move
          on-pointer-exit
          on-update-selected
          on-deselect
          delegates-get
          delegates-set!
          delegates-update!
          triggers-get
          triggers-set!
          triggers-update!)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is UnityEngine.EventSystems.EventTrigger a))
  (define (event-trigger? a)
    (clr-is UnityEngine.EventSystems.EventTrigger a))
  (define-method-port
    on-scroll
    UnityEngine.EventSystems.EventTrigger
    OnScroll
    (System.Void UnityEngine.EventSystems.PointerEventData))
  (define-method-port
    on-select
    UnityEngine.EventSystems.EventTrigger
    OnSelect
    (System.Void UnityEngine.EventSystems.BaseEventData))
  (define-method-port
    on-end-drag
    UnityEngine.EventSystems.EventTrigger
    OnEndDrag
    (System.Void UnityEngine.EventSystems.PointerEventData))
  (define-method-port
    on-pointer-down
    UnityEngine.EventSystems.EventTrigger
    OnPointerDown
    (System.Void UnityEngine.EventSystems.PointerEventData))
  (define-method-port
    on-cancel
    UnityEngine.EventSystems.EventTrigger
    OnCancel
    (System.Void UnityEngine.EventSystems.BaseEventData))
  (define-method-port
    on-initialize-potential-drag
    UnityEngine.EventSystems.EventTrigger
    OnInitializePotentialDrag
    (System.Void UnityEngine.EventSystems.PointerEventData))
  (define-method-port
    on-drag
    UnityEngine.EventSystems.EventTrigger
    OnDrag
    (System.Void UnityEngine.EventSystems.PointerEventData))
  (define-method-port
    on-pointer-enter
    UnityEngine.EventSystems.EventTrigger
    OnPointerEnter
    (System.Void UnityEngine.EventSystems.PointerEventData))
  (define-method-port
    on-submit
    UnityEngine.EventSystems.EventTrigger
    OnSubmit
    (System.Void UnityEngine.EventSystems.BaseEventData))
  (define-method-port
    on-drop
    UnityEngine.EventSystems.EventTrigger
    OnDrop
    (System.Void UnityEngine.EventSystems.PointerEventData))
  (define-method-port
    on-pointer-click
    UnityEngine.EventSystems.EventTrigger
    OnPointerClick
    (System.Void UnityEngine.EventSystems.PointerEventData))
  (define-method-port
    on-begin-drag
    UnityEngine.EventSystems.EventTrigger
    OnBeginDrag
    (System.Void UnityEngine.EventSystems.PointerEventData))
  (define-method-port
    on-pointer-up
    UnityEngine.EventSystems.EventTrigger
    OnPointerUp
    (System.Void UnityEngine.EventSystems.PointerEventData))
  (define-method-port
    on-move
    UnityEngine.EventSystems.EventTrigger
    OnMove
    (System.Void UnityEngine.EventSystems.AxisEventData))
  (define-method-port
    on-pointer-exit
    UnityEngine.EventSystems.EventTrigger
    OnPointerExit
    (System.Void UnityEngine.EventSystems.PointerEventData))
  (define-method-port
    on-update-selected
    UnityEngine.EventSystems.EventTrigger
    OnUpdateSelected
    (System.Void UnityEngine.EventSystems.BaseEventData))
  (define-method-port
    on-deselect
    UnityEngine.EventSystems.EventTrigger
    OnDeselect
    (System.Void UnityEngine.EventSystems.BaseEventData))
  (define-field-port
    delegates-get
    delegates-set!
    delegates-update!
    ()
    UnityEngine.EventSystems.EventTrigger
    delegates
    "System.Collections.Generic.List`1[[UnityEngine.EventSystems.EventTrigger+Entry, UnityEngine.UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]]")
  (define-field-port
    triggers-get
    triggers-set!
    triggers-update!
    (property:)
    UnityEngine.EventSystems.EventTrigger
    triggers
    "System.Collections.Generic.List`1[[UnityEngine.EventSystems.EventTrigger+Entry, UnityEngine.UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]]"))
