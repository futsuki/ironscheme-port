(library (unity-engine fixed-joint)
  (export new is? fixed-joint?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.FixedJoint a ...)))))
  (define (is? a) (clr-is UnityEngine.FixedJoint a))
  (define (fixed-joint? a) (clr-is UnityEngine.FixedJoint a)))
