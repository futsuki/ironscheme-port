(library (unity-engine effector2-d)
  (export new
          is?
          effector2-d?
          use-collider-mask?-get
          use-collider-mask?-set!
          use-collider-mask?-update!
          collider-mask-get
          collider-mask-set!
          collider-mask-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.Effector2D a ...)))))
  (define (is? a) (clr-is UnityEngine.Effector2D a))
  (define (effector2-d? a) (clr-is UnityEngine.Effector2D a))
  (define-field-port
    use-collider-mask?-get
    use-collider-mask?-set!
    use-collider-mask?-update!
    (property:)
    UnityEngine.Effector2D
    useColliderMask
    System.Boolean)
  (define-field-port
    collider-mask-get
    collider-mask-set!
    collider-mask-update!
    (property:)
    UnityEngine.Effector2D
    colliderMask
    System.Int32))
