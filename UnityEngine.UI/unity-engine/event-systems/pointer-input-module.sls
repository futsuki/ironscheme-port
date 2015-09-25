(library (unity-engine event-systems pointer-input-module)
  (export is?
          pointer-input-module?
          is-pointer-over-game-object?
          to-string
          k-mouse-left-id
          k-mouse-right-id
          k-mouse-middle-id
          k-fake-touches-id)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is UnityEngine.EventSystems.PointerInputModule a))
  (define (pointer-input-module? a)
    (clr-is UnityEngine.EventSystems.PointerInputModule a))
  (define-method-port
    is-pointer-over-game-object?
    UnityEngine.EventSystems.PointerInputModule
    IsPointerOverGameObject
    (System.Boolean System.Int32))
  (define-method-port
    to-string
    UnityEngine.EventSystems.PointerInputModule
    ToString
    (System.String))
  (define-field-port
    k-mouse-left-id
    #f
    #f
    (static:)
    UnityEngine.EventSystems.PointerInputModule
    kMouseLeftId
    System.Int32)
  (define-field-port
    k-mouse-right-id
    #f
    #f
    (static:)
    UnityEngine.EventSystems.PointerInputModule
    kMouseRightId
    System.Int32)
  (define-field-port
    k-mouse-middle-id
    #f
    #f
    (static:)
    UnityEngine.EventSystems.PointerInputModule
    kMouseMiddleId
    System.Int32)
  (define-field-port
    k-fake-touches-id
    #f
    #f
    (static:)
    UnityEngine.EventSystems.PointerInputModule
    kFakeTouchesId
    System.Int32))
