(library (unity-engine circle-collider2-d)
  (export new
          is?
          circle-collider2-d?
          radius-get
          radius-set!
          radius-update!
          center-get
          center-set!
          center-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.CircleCollider2D a ...)))))
  (define (is? a) (clr-is UnityEngine.CircleCollider2D a))
  (define (circle-collider2-d? a)
    (clr-is UnityEngine.CircleCollider2D a))
  (define-field-port
    radius-get
    radius-set!
    radius-update!
    (property:)
    UnityEngine.CircleCollider2D
    radius
    System.Single)
  (define-field-port
    center-get
    center-set!
    center-update!
    (property:)
    UnityEngine.CircleCollider2D
    center
    UnityEngine.Vector2))
