(library (unity-engine flare)
  (export new is? flare?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.Flare a ...)))))
  (define (is? a) (clr-is UnityEngine.Flare a))
  (define (flare? a) (clr-is UnityEngine.Flare a)))
