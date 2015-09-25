(library (unity-engine box-collider2-d)
  (export new
          is?
          box-collider2-d?
          size-get
          size-set!
          size-update!
          center-get
          center-set!
          center-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.BoxCollider2D a ...)))))
  (define (is? a) (clr-is UnityEngine.BoxCollider2D a))
  (define (box-collider2-d? a) (clr-is UnityEngine.BoxCollider2D a))
  (define-field-port
    size-get
    size-set!
    size-update!
    (property:)
    UnityEngine.BoxCollider2D
    size
    UnityEngine.Vector2)
  (define-field-port
    center-get
    center-set!
    center-update!
    (property:)
    UnityEngine.BoxCollider2D
    center
    UnityEngine.Vector2))
