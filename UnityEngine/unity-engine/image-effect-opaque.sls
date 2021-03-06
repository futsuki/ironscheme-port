(library (unity-engine image-effect-opaque)
  (export new is? image-effect-opaque?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.ImageEffectOpaque a ...)))))
  (define (is? a) (clr-is UnityEngine.ImageEffectOpaque a))
  (define (image-effect-opaque? a)
    (clr-is UnityEngine.ImageEffectOpaque a)))
