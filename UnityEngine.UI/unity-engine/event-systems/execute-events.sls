(library (unity-engine event-systems execute-events)
  (export is?
          execute-events?
          get-event-handler
          validate-event-data
          execute?
          execute-hierarchy
          can-handle-event?
          pointer-enter-handler
          pointer-exit-handler
          pointer-down-handler
          pointer-up-handler
          pointer-click-handler
          initialize-potential-drag
          begin-drag-handler
          drag-handler
          end-drag-handler
          drop-handler
          scroll-handler
          update-selected-handler
          select-handler
          deselect-handler
          move-handler
          submit-handler
          cancel-handler)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is UnityEngine.EventSystems.ExecuteEvents a))
  (define (execute-events? a)
    (clr-is UnityEngine.EventSystems.ExecuteEvents a))
  (define-method-port
    get-event-handler
    UnityEngine.EventSystems.ExecuteEvents
    GetEventHandler)
  (define-method-port
    validate-event-data
    UnityEngine.EventSystems.ExecuteEvents
    ValidateEventData)
  (define-method-port
    execute?
    UnityEngine.EventSystems.ExecuteEvents
    Execute)
  (define-method-port
    execute-hierarchy
    UnityEngine.EventSystems.ExecuteEvents
    ExecuteHierarchy)
  (define-method-port
    can-handle-event?
    UnityEngine.EventSystems.ExecuteEvents
    CanHandleEvent)
  (define-field-port
    pointer-enter-handler
    #f
    #f
    (static: property:)
    UnityEngine.EventSystems.ExecuteEvents
    pointerEnterHandler
    "UnityEngine.EventSystems.ExecuteEvents+EventFunction`1[[UnityEngine.EventSystems.IPointerEnterHandler, UnityEngine.UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]]")
  (define-field-port
    pointer-exit-handler
    #f
    #f
    (static: property:)
    UnityEngine.EventSystems.ExecuteEvents
    pointerExitHandler
    "UnityEngine.EventSystems.ExecuteEvents+EventFunction`1[[UnityEngine.EventSystems.IPointerExitHandler, UnityEngine.UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]]")
  (define-field-port
    pointer-down-handler
    #f
    #f
    (static: property:)
    UnityEngine.EventSystems.ExecuteEvents
    pointerDownHandler
    "UnityEngine.EventSystems.ExecuteEvents+EventFunction`1[[UnityEngine.EventSystems.IPointerDownHandler, UnityEngine.UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]]")
  (define-field-port
    pointer-up-handler
    #f
    #f
    (static: property:)
    UnityEngine.EventSystems.ExecuteEvents
    pointerUpHandler
    "UnityEngine.EventSystems.ExecuteEvents+EventFunction`1[[UnityEngine.EventSystems.IPointerUpHandler, UnityEngine.UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]]")
  (define-field-port
    pointer-click-handler
    #f
    #f
    (static: property:)
    UnityEngine.EventSystems.ExecuteEvents
    pointerClickHandler
    "UnityEngine.EventSystems.ExecuteEvents+EventFunction`1[[UnityEngine.EventSystems.IPointerClickHandler, UnityEngine.UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]]")
  (define-field-port
    initialize-potential-drag
    #f
    #f
    (static: property:)
    UnityEngine.EventSystems.ExecuteEvents
    initializePotentialDrag
    "UnityEngine.EventSystems.ExecuteEvents+EventFunction`1[[UnityEngine.EventSystems.IInitializePotentialDragHandler, UnityEngine.UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]]")
  (define-field-port
    begin-drag-handler
    #f
    #f
    (static: property:)
    UnityEngine.EventSystems.ExecuteEvents
    beginDragHandler
    "UnityEngine.EventSystems.ExecuteEvents+EventFunction`1[[UnityEngine.EventSystems.IBeginDragHandler, UnityEngine.UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]]")
  (define-field-port
    drag-handler
    #f
    #f
    (static: property:)
    UnityEngine.EventSystems.ExecuteEvents
    dragHandler
    "UnityEngine.EventSystems.ExecuteEvents+EventFunction`1[[UnityEngine.EventSystems.IDragHandler, UnityEngine.UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]]")
  (define-field-port
    end-drag-handler
    #f
    #f
    (static: property:)
    UnityEngine.EventSystems.ExecuteEvents
    endDragHandler
    "UnityEngine.EventSystems.ExecuteEvents+EventFunction`1[[UnityEngine.EventSystems.IEndDragHandler, UnityEngine.UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]]")
  (define-field-port
    drop-handler
    #f
    #f
    (static: property:)
    UnityEngine.EventSystems.ExecuteEvents
    dropHandler
    "UnityEngine.EventSystems.ExecuteEvents+EventFunction`1[[UnityEngine.EventSystems.IDropHandler, UnityEngine.UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]]")
  (define-field-port
    scroll-handler
    #f
    #f
    (static: property:)
    UnityEngine.EventSystems.ExecuteEvents
    scrollHandler
    "UnityEngine.EventSystems.ExecuteEvents+EventFunction`1[[UnityEngine.EventSystems.IScrollHandler, UnityEngine.UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]]")
  (define-field-port
    update-selected-handler
    #f
    #f
    (static: property:)
    UnityEngine.EventSystems.ExecuteEvents
    updateSelectedHandler
    "UnityEngine.EventSystems.ExecuteEvents+EventFunction`1[[UnityEngine.EventSystems.IUpdateSelectedHandler, UnityEngine.UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]]")
  (define-field-port
    select-handler
    #f
    #f
    (static: property:)
    UnityEngine.EventSystems.ExecuteEvents
    selectHandler
    "UnityEngine.EventSystems.ExecuteEvents+EventFunction`1[[UnityEngine.EventSystems.ISelectHandler, UnityEngine.UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]]")
  (define-field-port
    deselect-handler
    #f
    #f
    (static: property:)
    UnityEngine.EventSystems.ExecuteEvents
    deselectHandler
    "UnityEngine.EventSystems.ExecuteEvents+EventFunction`1[[UnityEngine.EventSystems.IDeselectHandler, UnityEngine.UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]]")
  (define-field-port
    move-handler
    #f
    #f
    (static: property:)
    UnityEngine.EventSystems.ExecuteEvents
    moveHandler
    "UnityEngine.EventSystems.ExecuteEvents+EventFunction`1[[UnityEngine.EventSystems.IMoveHandler, UnityEngine.UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]]")
  (define-field-port
    submit-handler
    #f
    #f
    (static: property:)
    UnityEngine.EventSystems.ExecuteEvents
    submitHandler
    "UnityEngine.EventSystems.ExecuteEvents+EventFunction`1[[UnityEngine.EventSystems.ISubmitHandler, UnityEngine.UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]]")
  (define-field-port
    cancel-handler
    #f
    #f
    (static: property:)
    UnityEngine.EventSystems.ExecuteEvents
    cancelHandler
    "UnityEngine.EventSystems.ExecuteEvents+EventFunction`1[[UnityEngine.EventSystems.ICancelHandler, UnityEngine.UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]]"))
