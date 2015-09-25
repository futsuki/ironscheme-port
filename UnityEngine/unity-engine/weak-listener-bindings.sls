(library (unity-engine weak-listener-bindings)
  (export new is? weak-listener-bindings? invoke-callbacks)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new UnityEngine.WeakListenerBindings a ...)))))
  (define (is? a) (clr-is UnityEngine.WeakListenerBindings a))
  (define (weak-listener-bindings? a)
    (clr-is UnityEngine.WeakListenerBindings a))
  (define-method-port
    invoke-callbacks
    UnityEngine.WeakListenerBindings
    InvokeCallbacks
    (static:
      System.Void
      System.Object
      System.Runtime.InteropServices.GCHandle
      System.Object[])))
