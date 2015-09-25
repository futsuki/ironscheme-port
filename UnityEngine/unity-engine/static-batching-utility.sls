(library (unity-engine static-batching-utility)
  (export new is? static-batching-utility? combine)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new UnityEngine.StaticBatchingUtility a ...)))))
  (define (is? a) (clr-is UnityEngine.StaticBatchingUtility a))
  (define (static-batching-utility? a)
    (clr-is UnityEngine.StaticBatchingUtility a))
  (define-method-port
    combine
    UnityEngine.StaticBatchingUtility
    Combine
    (static:
      System.Void
      UnityEngine.GameObject[]
      UnityEngine.GameObject)
    (static: System.Void UnityEngine.GameObject)))
