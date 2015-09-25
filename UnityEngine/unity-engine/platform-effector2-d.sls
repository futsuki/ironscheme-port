(library (unity-engine platform-effector2-d)
  (export new
          is?
          platform-effector2-d?
          one-way?-get
          one-way?-set!
          one-way?-update!
          side-friction?-get
          side-friction?-set!
          side-friction?-update!
          side-bounce?-get
          side-bounce?-set!
          side-bounce?-update!
          use-one-way?-get
          use-one-way?-set!
          use-one-way?-update!
          use-side-friction?-get
          use-side-friction?-set!
          use-side-friction?-update!
          use-side-bounce?-get
          use-side-bounce?-set!
          use-side-bounce?-update!
          side-angle-variance-get
          side-angle-variance-set!
          side-angle-variance-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.PlatformEffector2D a ...)))))
  (define (is? a) (clr-is UnityEngine.PlatformEffector2D a))
  (define (platform-effector2-d? a)
    (clr-is UnityEngine.PlatformEffector2D a))
  (define-field-port
    one-way?-get
    one-way?-set!
    one-way?-update!
    (property:)
    UnityEngine.PlatformEffector2D
    oneWay
    System.Boolean)
  (define-field-port
    side-friction?-get
    side-friction?-set!
    side-friction?-update!
    (property:)
    UnityEngine.PlatformEffector2D
    sideFriction
    System.Boolean)
  (define-field-port
    side-bounce?-get
    side-bounce?-set!
    side-bounce?-update!
    (property:)
    UnityEngine.PlatformEffector2D
    sideBounce
    System.Boolean)
  (define-field-port
    use-one-way?-get
    use-one-way?-set!
    use-one-way?-update!
    (property:)
    UnityEngine.PlatformEffector2D
    useOneWay
    System.Boolean)
  (define-field-port
    use-side-friction?-get
    use-side-friction?-set!
    use-side-friction?-update!
    (property:)
    UnityEngine.PlatformEffector2D
    useSideFriction
    System.Boolean)
  (define-field-port
    use-side-bounce?-get
    use-side-bounce?-set!
    use-side-bounce?-update!
    (property:)
    UnityEngine.PlatformEffector2D
    useSideBounce
    System.Boolean)
  (define-field-port
    side-angle-variance-get
    side-angle-variance-set!
    side-angle-variance-update!
    (property:)
    UnityEngine.PlatformEffector2D
    sideAngleVariance
    System.Single))
