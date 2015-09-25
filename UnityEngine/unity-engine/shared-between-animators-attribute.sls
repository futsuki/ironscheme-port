(library (unity-engine shared-between-animators-attribute)
  (export new is? shared-between-animators-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             UnityEngine.SharedBetweenAnimatorsAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is UnityEngine.SharedBetweenAnimatorsAttribute a))
  (define (shared-between-animators-attribute? a)
    (clr-is UnityEngine.SharedBetweenAnimatorsAttribute a)))
