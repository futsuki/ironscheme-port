(library (unity-engine runtime-animator-controller)
  (export new is? runtime-animator-controller? animation-clips)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new UnityEngine.RuntimeAnimatorController a ...)))))
  (define (is? a) (clr-is UnityEngine.RuntimeAnimatorController a))
  (define (runtime-animator-controller? a)
    (clr-is UnityEngine.RuntimeAnimatorController a))
  (define-field-port
    animation-clips
    #f
    #f
    (property:)
    UnityEngine.RuntimeAnimatorController
    animationClips
    UnityEngine.AnimationClip[]))
