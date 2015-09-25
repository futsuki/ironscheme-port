(library (unity-engine surface-effector2-d)
  (export new
          is?
          surface-effector2-d?
          speed-get
          speed-set!
          speed-update!
          speed-variation-get
          speed-variation-set!
          speed-variation-update!
          force-scale-get
          force-scale-set!
          force-scale-update!
          use-contact-force?-get
          use-contact-force?-set!
          use-contact-force?-update!
          use-friction?-get
          use-friction?-set!
          use-friction?-update!
          use-bounce?-get
          use-bounce?-set!
          use-bounce?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.SurfaceEffector2D a ...)))))
  (define (is? a) (clr-is UnityEngine.SurfaceEffector2D a))
  (define (surface-effector2-d? a)
    (clr-is UnityEngine.SurfaceEffector2D a))
  (define-field-port
    speed-get
    speed-set!
    speed-update!
    (property:)
    UnityEngine.SurfaceEffector2D
    speed
    System.Single)
  (define-field-port
    speed-variation-get
    speed-variation-set!
    speed-variation-update!
    (property:)
    UnityEngine.SurfaceEffector2D
    speedVariation
    System.Single)
  (define-field-port
    force-scale-get
    force-scale-set!
    force-scale-update!
    (property:)
    UnityEngine.SurfaceEffector2D
    forceScale
    System.Single)
  (define-field-port
    use-contact-force?-get
    use-contact-force?-set!
    use-contact-force?-update!
    (property:)
    UnityEngine.SurfaceEffector2D
    useContactForce
    System.Boolean)
  (define-field-port
    use-friction?-get
    use-friction?-set!
    use-friction?-update!
    (property:)
    UnityEngine.SurfaceEffector2D
    useFriction
    System.Boolean)
  (define-field-port
    use-bounce?-get
    use-bounce?-set!
    use-bounce?-update!
    (property:)
    UnityEngine.SurfaceEffector2D
    useBounce
    System.Boolean))
