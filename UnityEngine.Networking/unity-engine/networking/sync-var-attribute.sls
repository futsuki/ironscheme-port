(library (unity-engine networking sync-var-attribute)
  (export new is? sync-var-attribute? hook-get hook-set! hook-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new UnityEngine.Networking.SyncVarAttribute a ...)))))
  (define (is? a) (clr-is UnityEngine.Networking.SyncVarAttribute a))
  (define (sync-var-attribute? a)
    (clr-is UnityEngine.Networking.SyncVarAttribute a))
  (define-field-port
    hook-get
    hook-set!
    hook-update!
    ()
    UnityEngine.Networking.SyncVarAttribute
    hook
    System.String))
