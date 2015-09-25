(library (unity-engine events unity-event)
  (export new is? unity-event? invoke remove-listener add-listener)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.Events.UnityEvent a ...)))))
  (define (is? a) (clr-is UnityEngine.Events.UnityEvent a))
  (define (unity-event? a) (clr-is UnityEngine.Events.UnityEvent a))
  (define-method-port
    invoke
    UnityEngine.Events.UnityEvent
    Invoke
    (System.Void))
  (define-method-port
    remove-listener
    UnityEngine.Events.UnityEvent
    RemoveListener
    (System.Void UnityEngine.Events.UnityAction))
  (define-method-port
    add-listener
    UnityEngine.Events.UnityEvent
    AddListener
    (System.Void UnityEngine.Events.UnityAction)))
