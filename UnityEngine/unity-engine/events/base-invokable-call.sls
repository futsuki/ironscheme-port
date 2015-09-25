(library (unity-engine events base-invokable-call)
  (export is? base-invokable-call? find? invoke)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is UnityEngine.Events.BaseInvokableCall a))
  (define (base-invokable-call? a)
    (clr-is UnityEngine.Events.BaseInvokableCall a))
  (define-method-port
    find?
    UnityEngine.Events.BaseInvokableCall
    Find
    (System.Boolean System.Object System.Reflection.MethodInfo))
  (define-method-port
    invoke
    UnityEngine.Events.BaseInvokableCall
    Invoke
    (System.Void System.Object[])))
