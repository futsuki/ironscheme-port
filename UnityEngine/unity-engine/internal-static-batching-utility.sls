(library (unity-engine internal-static-batching-utility)
  (export new is? internal-static-batching-utility? combine)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new UnityEngine.InternalStaticBatchingUtility a ...)))))
  (define (is? a) (clr-is UnityEngine.InternalStaticBatchingUtility a))
  (define (internal-static-batching-utility? a)
    (clr-is UnityEngine.InternalStaticBatchingUtility a))
  (define-method-port
    combine
    UnityEngine.InternalStaticBatchingUtility
    Combine
    (static:
      System.Void
      UnityEngine.GameObject[]
      UnityEngine.GameObject)
    (static: System.Void UnityEngine.GameObject System.Boolean)
    (static: System.Void UnityEngine.GameObject)))
