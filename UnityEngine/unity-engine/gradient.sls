(library (unity-engine gradient)
  (export new
          is?
          gradient?
          evaluate
          set-keys
          color-keys-get
          color-keys-set!
          color-keys-update!
          alpha-keys-get
          alpha-keys-set!
          alpha-keys-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.Gradient a ...)))))
  (define (is? a) (clr-is UnityEngine.Gradient a))
  (define (gradient? a) (clr-is UnityEngine.Gradient a))
  (define-method-port
    evaluate
    UnityEngine.Gradient
    Evaluate
    (UnityEngine.Color System.Single))
  (define-method-port
    set-keys
    UnityEngine.Gradient
    SetKeys
    (System.Void
      UnityEngine.GradientColorKey[]
      UnityEngine.GradientAlphaKey[]))
  (define-field-port
    color-keys-get
    color-keys-set!
    color-keys-update!
    (property:)
    UnityEngine.Gradient
    colorKeys
    UnityEngine.GradientColorKey[])
  (define-field-port
    alpha-keys-get
    alpha-keys-set!
    alpha-keys-update!
    (property:)
    UnityEngine.Gradient
    alphaKeys
    UnityEngine.GradientAlphaKey[]))
