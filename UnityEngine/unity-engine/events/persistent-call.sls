(library (unity-engine events persistent-call)
  (export new
          is?
          persistent-call?
          is-valid?
          register-persistent-listener
          unregister-persistent-listener
          get-runtime-call
          target
          method-name
          mode-get
          mode-set!
          mode-update!
          arguments
          call-state-get
          call-state-set!
          call-state-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new UnityEngine.Events.PersistentCall a ...)))))
  (define (is? a) (clr-is UnityEngine.Events.PersistentCall a))
  (define (persistent-call? a)
    (clr-is UnityEngine.Events.PersistentCall a))
  (define-method-port
    is-valid?
    UnityEngine.Events.PersistentCall
    IsValid
    (System.Boolean))
  (define-method-port
    register-persistent-listener
    UnityEngine.Events.PersistentCall
    RegisterPersistentListener
    (System.Void UnityEngine.Object System.String))
  (define-method-port
    unregister-persistent-listener
    UnityEngine.Events.PersistentCall
    UnregisterPersistentListener
    (System.Void))
  (define-method-port
    get-runtime-call
    UnityEngine.Events.PersistentCall
    GetRuntimeCall
    (UnityEngine.Events.BaseInvokableCall
      UnityEngine.Events.UnityEventBase))
  (define-field-port
    target
    #f
    #f
    (property:)
    UnityEngine.Events.PersistentCall
    target
    UnityEngine.Object)
  (define-field-port
    method-name
    #f
    #f
    (property:)
    UnityEngine.Events.PersistentCall
    methodName
    System.String)
  (define-field-port
    mode-get
    mode-set!
    mode-update!
    (property:)
    UnityEngine.Events.PersistentCall
    mode
    UnityEngine.Events.PersistentListenerMode)
  (define-field-port
    arguments
    #f
    #f
    (property:)
    UnityEngine.Events.PersistentCall
    arguments
    UnityEngine.Events.ArgumentCache)
  (define-field-port
    call-state-get
    call-state-set!
    call-state-update!
    (property:)
    UnityEngine.Events.PersistentCall
    callState
    UnityEngine.Events.UnityEventCallState))
