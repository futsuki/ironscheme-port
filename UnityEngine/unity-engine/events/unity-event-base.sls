(library (unity-engine events unity-event-base)
  (export is?
          unity-event-base?
          get-persistent-target
          get-valid-method-info
          set-persistent-listener-state
          get-persistent-event-count
          to-string
          remove-all-listeners
          get-persistent-method-name)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is UnityEngine.Events.UnityEventBase a))
  (define (unity-event-base? a)
    (clr-is UnityEngine.Events.UnityEventBase a))
  (define-method-port
    get-persistent-target
    UnityEngine.Events.UnityEventBase
    GetPersistentTarget
    (UnityEngine.Object System.Int32))
  (define-method-port
    get-valid-method-info
    UnityEngine.Events.UnityEventBase
    GetValidMethodInfo
    (static:
      System.Reflection.MethodInfo
      System.Object
      System.String
      System.Type[]))
  (define-method-port
    set-persistent-listener-state
    UnityEngine.Events.UnityEventBase
    SetPersistentListenerState
    (System.Void System.Int32 UnityEngine.Events.UnityEventCallState))
  (define-method-port
    get-persistent-event-count
    UnityEngine.Events.UnityEventBase
    GetPersistentEventCount
    (System.Int32))
  (define-method-port
    to-string
    UnityEngine.Events.UnityEventBase
    ToString
    (System.String))
  (define-method-port
    remove-all-listeners
    UnityEngine.Events.UnityEventBase
    RemoveAllListeners
    (System.Void))
  (define-method-port
    get-persistent-method-name
    UnityEngine.Events.UnityEventBase
    GetPersistentMethodName
    (System.String System.Int32)))
