(library (unity-engine animator-override-controller)
  (export new
          is?
          animator-override-controller?
          runtime-animator-controller-get
          runtime-animator-controller-set!
          runtime-animator-controller-update!
          item-get
          item-set!
          item-update!
          item-get
          item-set!
          item-update!
          clips-get
          clips-set!
          clips-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new UnityEngine.AnimatorOverrideController a ...)))))
  (define (is? a) (clr-is UnityEngine.AnimatorOverrideController a))
  (define (animator-override-controller? a)
    (clr-is UnityEngine.AnimatorOverrideController a))
  (define-field-port
    runtime-animator-controller-get
    runtime-animator-controller-set!
    runtime-animator-controller-update!
    (property:)
    UnityEngine.AnimatorOverrideController
    runtimeAnimatorController
    UnityEngine.RuntimeAnimatorController)
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    UnityEngine.AnimatorOverrideController
    Item
    UnityEngine.AnimationClip)
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    UnityEngine.AnimatorOverrideController
    Item
    UnityEngine.AnimationClip)
  (define-field-port
    clips-get
    clips-set!
    clips-update!
    (property:)
    UnityEngine.AnimatorOverrideController
    clips
    UnityEngine.AnimationClipPair[]))
