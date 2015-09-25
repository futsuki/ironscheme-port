(library (unity-engine slider-joint2-d)
  (export new
          is?
          slider-joint2-d?
          get-motor-force
          angle-get
          angle-set!
          angle-update!
          use-motor?-get
          use-motor?-set!
          use-motor?-update!
          use-limits?-get
          use-limits?-set!
          use-limits?-update!
          motor-get
          motor-set!
          motor-update!
          limits-get
          limits-set!
          limits-update!
          limit-state
          reference-angle
          joint-translation
          joint-speed)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.SliderJoint2D a ...)))))
  (define (is? a) (clr-is UnityEngine.SliderJoint2D a))
  (define (slider-joint2-d? a) (clr-is UnityEngine.SliderJoint2D a))
  (define-method-port
    get-motor-force
    UnityEngine.SliderJoint2D
    GetMotorForce
    (System.Single System.Single))
  (define-field-port
    angle-get
    angle-set!
    angle-update!
    (property:)
    UnityEngine.SliderJoint2D
    angle
    System.Single)
  (define-field-port
    use-motor?-get
    use-motor?-set!
    use-motor?-update!
    (property:)
    UnityEngine.SliderJoint2D
    useMotor
    System.Boolean)
  (define-field-port
    use-limits?-get
    use-limits?-set!
    use-limits?-update!
    (property:)
    UnityEngine.SliderJoint2D
    useLimits
    System.Boolean)
  (define-field-port
    motor-get
    motor-set!
    motor-update!
    (property:)
    UnityEngine.SliderJoint2D
    motor
    UnityEngine.JointMotor2D)
  (define-field-port
    limits-get
    limits-set!
    limits-update!
    (property:)
    UnityEngine.SliderJoint2D
    limits
    UnityEngine.JointTranslationLimits2D)
  (define-field-port
    limit-state
    #f
    #f
    (property:)
    UnityEngine.SliderJoint2D
    limitState
    UnityEngine.JointLimitState2D)
  (define-field-port
    reference-angle
    #f
    #f
    (property:)
    UnityEngine.SliderJoint2D
    referenceAngle
    System.Single)
  (define-field-port
    joint-translation
    #f
    #f
    (property:)
    UnityEngine.SliderJoint2D
    jointTranslation
    System.Single)
  (define-field-port
    joint-speed
    #f
    #f
    (property:)
    UnityEngine.SliderJoint2D
    jointSpeed
    System.Single))
