(library (unity-engine unity-exception)
  (export new is? unity-exception?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.UnityException a ...)))))
  (define (is? a) (clr-is UnityEngine.UnityException a))
  (define (unity-exception? a) (clr-is UnityEngine.UnityException a)))
