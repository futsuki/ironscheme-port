(library (unity-engine event-systems base-event-data)
  (export new
          is?
          base-event-data?
          use
          reset
          used?
          current-input-module
          selected-object-get
          selected-object-set!
          selected-object-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new UnityEngine.EventSystems.BaseEventData a ...)))))
  (define (is? a) (clr-is UnityEngine.EventSystems.BaseEventData a))
  (define (base-event-data? a)
    (clr-is UnityEngine.EventSystems.BaseEventData a))
  (define-method-port
    use
    UnityEngine.EventSystems.BaseEventData
    Use
    (System.Void))
  (define-method-port
    reset
    UnityEngine.EventSystems.BaseEventData
    Reset
    (System.Void))
  (define-field-port
    used?
    #f
    #f
    (property:)
    UnityEngine.EventSystems.BaseEventData
    used
    System.Boolean)
  (define-field-port
    current-input-module
    #f
    #f
    (property:)
    UnityEngine.EventSystems.BaseEventData
    currentInputModule
    UnityEngine.EventSystems.BaseInputModule)
  (define-field-port
    selected-object-get
    selected-object-set!
    selected-object-update!
    (property:)
    UnityEngine.EventSystems.BaseEventData
    selectedObject
    UnityEngine.GameObject))
