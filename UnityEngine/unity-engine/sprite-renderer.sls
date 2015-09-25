(library (unity-engine sprite-renderer)
  (export new
          is?
          sprite-renderer?
          sprite-get
          sprite-set!
          sprite-update!
          color-get
          color-set!
          color-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.SpriteRenderer a ...)))))
  (define (is? a) (clr-is UnityEngine.SpriteRenderer a))
  (define (sprite-renderer? a) (clr-is UnityEngine.SpriteRenderer a))
  (define-field-port
    sprite-get
    sprite-set!
    sprite-update!
    (property:)
    UnityEngine.SpriteRenderer
    sprite
    UnityEngine.Sprite)
  (define-field-port
    color-get
    color-set!
    color-update!
    (property:)
    UnityEngine.SpriteRenderer
    color
    UnityEngine.Color))
