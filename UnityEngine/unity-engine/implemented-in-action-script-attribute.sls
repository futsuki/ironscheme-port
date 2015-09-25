(library (unity-engine implemented-in-action-script-attribute)
  (export new is? implemented-in-action-script-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             UnityEngine.ImplementedInActionScriptAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is UnityEngine.ImplementedInActionScriptAttribute a))
  (define (implemented-in-action-script-attribute? a)
    (clr-is UnityEngine.ImplementedInActionScriptAttribute a)))
