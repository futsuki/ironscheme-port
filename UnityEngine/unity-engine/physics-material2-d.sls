(library (unity-engine physics-material2-d)
  (export new
          is?
          physics-material2-d?
          bounciness-get
          bounciness-set!
          bounciness-update!
          friction-get
          friction-set!
          friction-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.PhysicsMaterial2D a ...)))))
  (define (is? a) (clr-is UnityEngine.PhysicsMaterial2D a))
  (define (physics-material2-d? a)
    (clr-is UnityEngine.PhysicsMaterial2D a))
  (define-field-port
    bounciness-get
    bounciness-set!
    bounciness-update!
    (property:)
    UnityEngine.PhysicsMaterial2D
    bounciness
    System.Single)
  (define-field-port
    friction-get
    friction-set!
    friction-update!
    (property:)
    UnityEngine.PhysicsMaterial2D
    friction
    System.Single))
