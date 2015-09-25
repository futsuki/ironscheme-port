(library (unity-engine motion)
  (export new
          is?
          motion?
          validate-if-retargetable?
          average-duration
          average-angular-speed
          average-speed
          apparent-speed
          is-looping?
          legacy?
          is-human-motion?
          is-animator-motion?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.Motion a ...)))))
  (define (is? a) (clr-is UnityEngine.Motion a))
  (define (motion? a) (clr-is UnityEngine.Motion a))
  (define-method-port
    validate-if-retargetable?
    UnityEngine.Motion
    ValidateIfRetargetable
    (System.Boolean System.Boolean))
  (define-field-port
    average-duration
    #f
    #f
    (property:)
    UnityEngine.Motion
    averageDuration
    System.Single)
  (define-field-port
    average-angular-speed
    #f
    #f
    (property:)
    UnityEngine.Motion
    averageAngularSpeed
    System.Single)
  (define-field-port
    average-speed
    #f
    #f
    (property:)
    UnityEngine.Motion
    averageSpeed
    UnityEngine.Vector3)
  (define-field-port
    apparent-speed
    #f
    #f
    (property:)
    UnityEngine.Motion
    apparentSpeed
    System.Single)
  (define-field-port
    is-looping?
    #f
    #f
    (property:)
    UnityEngine.Motion
    isLooping
    System.Boolean)
  (define-field-port
    legacy?
    #f
    #f
    (property:)
    UnityEngine.Motion
    legacy
    System.Boolean)
  (define-field-port
    is-human-motion?
    #f
    #f
    (property:)
    UnityEngine.Motion
    isHumanMotion
    System.Boolean)
  (define-field-port
    is-animator-motion?
    #f
    #f
    (property:)
    UnityEngine.Motion
    isAnimatorMotion
    System.Boolean))
