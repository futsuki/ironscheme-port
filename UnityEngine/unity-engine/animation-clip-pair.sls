(library (unity-engine animation-clip-pair)
  (export new
          is?
          animation-clip-pair?
          original-clip-get
          original-clip-set!
          original-clip-update!
          override-clip-get
          override-clip-set!
          override-clip-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.AnimationClipPair a ...)))))
  (define (is? a) (clr-is UnityEngine.AnimationClipPair a))
  (define (animation-clip-pair? a)
    (clr-is UnityEngine.AnimationClipPair a))
  (define-field-port
    original-clip-get
    original-clip-set!
    original-clip-update!
    ()
    UnityEngine.AnimationClipPair
    originalClip
    UnityEngine.AnimationClip)
  (define-field-port
    override-clip-get
    override-clip-set!
    override-clip-update!
    ()
    UnityEngine.AnimationClipPair
    overrideClip
    UnityEngine.AnimationClip))
