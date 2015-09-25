(library (unity-engine runtime-initialize-on-load-method-attribute)
  (export new is? runtime-initialize-on-load-method-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             UnityEngine.RuntimeInitializeOnLoadMethodAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is UnityEngine.RuntimeInitializeOnLoadMethodAttribute a))
  (define (runtime-initialize-on-load-method-attribute? a)
    (clr-is UnityEngine.RuntimeInitializeOnLoadMethodAttribute a)))
