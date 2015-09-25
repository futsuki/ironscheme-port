(library (unity-engine events invokable-call)
  (export new is? invokable-call? find? invoke)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new UnityEngine.Events.InvokableCall a ...)))))
  (define (is? a) (clr-is UnityEngine.Events.InvokableCall a))
  (define (invokable-call? a)
    (clr-is UnityEngine.Events.InvokableCall a))
  (define-method-port
    find?
    UnityEngine.Events.InvokableCall
    Find
    (System.Boolean System.Object System.Reflection.MethodInfo))
  (define-method-port
    invoke
    UnityEngine.Events.InvokableCall
    Invoke
    (System.Void System.Object[])))
