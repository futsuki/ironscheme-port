(library (unity-engine events persistent-call-group)
  (export new
          is?
          persistent-call-group?
          remove-listeners
          unregister-persistent-listener
          register-object-persistent-listener
          initialize
          get-listeners
          register-int-persistent-listener
          register-event-persistent-listener
          register-void-persistent-listener
          register-bool-persistent-listener
          remove-listener
          clear
          register-string-persistent-listener
          register-float-persistent-listener
          add-listener
          get-listener
          count)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new UnityEngine.Events.PersistentCallGroup a ...)))))
  (define (is? a) (clr-is UnityEngine.Events.PersistentCallGroup a))
  (define (persistent-call-group? a)
    (clr-is UnityEngine.Events.PersistentCallGroup a))
  (define-method-port
    remove-listeners
    UnityEngine.Events.PersistentCallGroup
    RemoveListeners
    (System.Void UnityEngine.Object System.String))
  (define-method-port
    unregister-persistent-listener
    UnityEngine.Events.PersistentCallGroup
    UnregisterPersistentListener
    (System.Void System.Int32))
  (define-method-port
    register-object-persistent-listener
    UnityEngine.Events.PersistentCallGroup
    RegisterObjectPersistentListener
    (System.Void
      System.Int32
      UnityEngine.Object
      UnityEngine.Object
      System.String))
  (define-method-port
    initialize
    UnityEngine.Events.PersistentCallGroup
    Initialize
    (System.Void
      UnityEngine.Events.InvokableCallList
      UnityEngine.Events.UnityEventBase))
  (define-method-port
    get-listeners
    UnityEngine.Events.PersistentCallGroup
    GetListeners
    ("System.Collections.Generic.IEnumerable`1[[UnityEngine.Events.PersistentCall, UnityEngine, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null]]"))
  (define-method-port
    register-int-persistent-listener
    UnityEngine.Events.PersistentCallGroup
    RegisterIntPersistentListener
    (System.Void
      System.Int32
      UnityEngine.Object
      System.Int32
      System.String))
  (define-method-port
    register-event-persistent-listener
    UnityEngine.Events.PersistentCallGroup
    RegisterEventPersistentListener
    (System.Void System.Int32 UnityEngine.Object System.String))
  (define-method-port
    register-void-persistent-listener
    UnityEngine.Events.PersistentCallGroup
    RegisterVoidPersistentListener
    (System.Void System.Int32 UnityEngine.Object System.String))
  (define-method-port
    register-bool-persistent-listener
    UnityEngine.Events.PersistentCallGroup
    RegisterBoolPersistentListener
    (System.Void
      System.Int32
      UnityEngine.Object
      System.Boolean
      System.String))
  (define-method-port
    remove-listener
    UnityEngine.Events.PersistentCallGroup
    RemoveListener
    (System.Void System.Int32))
  (define-method-port
    clear
    UnityEngine.Events.PersistentCallGroup
    Clear
    (System.Void))
  (define-method-port
    register-string-persistent-listener
    UnityEngine.Events.PersistentCallGroup
    RegisterStringPersistentListener
    (System.Void
      System.Int32
      UnityEngine.Object
      System.String
      System.String))
  (define-method-port
    register-float-persistent-listener
    UnityEngine.Events.PersistentCallGroup
    RegisterFloatPersistentListener
    (System.Void
      System.Int32
      UnityEngine.Object
      System.Single
      System.String))
  (define-method-port
    add-listener
    UnityEngine.Events.PersistentCallGroup
    AddListener
    (System.Void UnityEngine.Events.PersistentCall)
    (System.Void))
  (define-method-port
    get-listener
    UnityEngine.Events.PersistentCallGroup
    GetListener
    (UnityEngine.Events.PersistentCall System.Int32))
  (define-field-port
    count
    #f
    #f
    (property:)
    UnityEngine.Events.PersistentCallGroup
    Count
    System.Int32))
