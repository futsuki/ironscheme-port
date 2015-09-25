(library (unity-engine events invokable-call-list)
  (export new
          is?
          invokable-call-list?
          clear-persistent
          invoke
          add-persistent-invokable-call
          remove-listener
          clear
          add-listener
          count)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new UnityEngine.Events.InvokableCallList a ...)))))
  (define (is? a) (clr-is UnityEngine.Events.InvokableCallList a))
  (define (invokable-call-list? a)
    (clr-is UnityEngine.Events.InvokableCallList a))
  (define-method-port
    clear-persistent
    UnityEngine.Events.InvokableCallList
    ClearPersistent
    (System.Void))
  (define-method-port
    invoke
    UnityEngine.Events.InvokableCallList
    Invoke
    (System.Void System.Object[]))
  (define-method-port
    add-persistent-invokable-call
    UnityEngine.Events.InvokableCallList
    AddPersistentInvokableCall
    (System.Void UnityEngine.Events.BaseInvokableCall))
  (define-method-port
    remove-listener
    UnityEngine.Events.InvokableCallList
    RemoveListener
    (System.Void System.Object System.Reflection.MethodInfo))
  (define-method-port
    clear
    UnityEngine.Events.InvokableCallList
    Clear
    (System.Void))
  (define-method-port
    add-listener
    UnityEngine.Events.InvokableCallList
    AddListener
    (System.Void UnityEngine.Events.BaseInvokableCall))
  (define-field-port
    count
    #f
    #f
    (property:)
    UnityEngine.Events.InvokableCallList
    Count
    System.Int32))
