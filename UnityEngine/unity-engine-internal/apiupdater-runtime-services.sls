(library (unity-engine-internal apiupdater-runtime-services)
  (export new is? apiupdater-runtime-services? add-component)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             UnityEngineInternal.APIUpdaterRuntimeServices
             a
             ...)))))
  (define (is? a)
    (clr-is UnityEngineInternal.APIUpdaterRuntimeServices a))
  (define (apiupdater-runtime-services? a)
    (clr-is UnityEngineInternal.APIUpdaterRuntimeServices a))
  (define-method-port
    add-component
    UnityEngineInternal.APIUpdaterRuntimeServices
    AddComponent
    (static:
      UnityEngine.Component
      UnityEngine.GameObject
      System.String
      System.String)))
