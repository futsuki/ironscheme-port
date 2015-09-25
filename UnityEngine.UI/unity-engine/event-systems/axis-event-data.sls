(library (unity-engine event-systems axis-event-data)
  (export new
          is?
          axis-event-data?
          move-vector-get
          move-vector-set!
          move-vector-update!
          move-dir-get
          move-dir-set!
          move-dir-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new UnityEngine.EventSystems.AxisEventData a ...)))))
  (define (is? a) (clr-is UnityEngine.EventSystems.AxisEventData a))
  (define (axis-event-data? a)
    (clr-is UnityEngine.EventSystems.AxisEventData a))
  (define-field-port
    move-vector-get
    move-vector-set!
    move-vector-update!
    (property:)
    UnityEngine.EventSystems.AxisEventData
    moveVector
    UnityEngine.Vector2)
  (define-field-port
    move-dir-get
    move-dir-set!
    move-dir-update!
    (property:)
    UnityEngine.EventSystems.AxisEventData
    moveDir
    UnityEngine.EventSystems.MoveDirection))
