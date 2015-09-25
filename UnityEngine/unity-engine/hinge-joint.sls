(library (unity-engine hinge-joint)
  (export new
          is?
          hinge-joint?
          motor-get
          motor-set!
          motor-update!
          limits-get
          limits-set!
          limits-update!
          spring-get
          spring-set!
          spring-update!
          use-motor?-get
          use-motor?-set!
          use-motor?-update!
          use-limits?-get
          use-limits?-set!
          use-limits?-update!
          use-spring?-get
          use-spring?-set!
          use-spring?-update!
          velocity
          angle)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.HingeJoint a ...)))))
  (define (is? a) (clr-is UnityEngine.HingeJoint a))
  (define (hinge-joint? a) (clr-is UnityEngine.HingeJoint a))
  (define-field-port
    motor-get
    motor-set!
    motor-update!
    (property:)
    UnityEngine.HingeJoint
    motor
    UnityEngine.JointMotor)
  (define-field-port
    limits-get
    limits-set!
    limits-update!
    (property:)
    UnityEngine.HingeJoint
    limits
    UnityEngine.JointLimits)
  (define-field-port
    spring-get
    spring-set!
    spring-update!
    (property:)
    UnityEngine.HingeJoint
    spring
    UnityEngine.JointSpring)
  (define-field-port
    use-motor?-get
    use-motor?-set!
    use-motor?-update!
    (property:)
    UnityEngine.HingeJoint
    useMotor
    System.Boolean)
  (define-field-port
    use-limits?-get
    use-limits?-set!
    use-limits?-update!
    (property:)
    UnityEngine.HingeJoint
    useLimits
    System.Boolean)
  (define-field-port
    use-spring?-get
    use-spring?-set!
    use-spring?-update!
    (property:)
    UnityEngine.HingeJoint
    useSpring
    System.Boolean)
  (define-field-port
    velocity
    #f
    #f
    (property:)
    UnityEngine.HingeJoint
    velocity
    System.Single)
  (define-field-port
    angle
    #f
    #f
    (property:)
    UnityEngine.HingeJoint
    angle
    System.Single))
