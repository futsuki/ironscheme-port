(library (unity-engine hinge-joint2-d)
  (export new
          is?
          hinge-joint2-d?
          get-reaction-force
          get-reaction-torque
          get-motor-torque
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
          joint-angle
          joint-speed)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.HingeJoint2D a ...)))))
  (define (is? a) (clr-is UnityEngine.HingeJoint2D a))
  (define (hinge-joint2-d? a) (clr-is UnityEngine.HingeJoint2D a))
  (define-method-port
    get-reaction-force
    UnityEngine.HingeJoint2D
    GetReactionForce
    (UnityEngine.Vector2 System.Single))
  (define-method-port
    get-reaction-torque
    UnityEngine.HingeJoint2D
    GetReactionTorque
    (System.Single System.Single))
  (define-method-port
    get-motor-torque
    UnityEngine.HingeJoint2D
    GetMotorTorque
    (System.Single System.Single))
  (define-field-port
    use-motor?-get
    use-motor?-set!
    use-motor?-update!
    (property:)
    UnityEngine.HingeJoint2D
    useMotor
    System.Boolean)
  (define-field-port
    use-limits?-get
    use-limits?-set!
    use-limits?-update!
    (property:)
    UnityEngine.HingeJoint2D
    useLimits
    System.Boolean)
  (define-field-port
    motor-get
    motor-set!
    motor-update!
    (property:)
    UnityEngine.HingeJoint2D
    motor
    UnityEngine.JointMotor2D)
  (define-field-port
    limits-get
    limits-set!
    limits-update!
    (property:)
    UnityEngine.HingeJoint2D
    limits
    UnityEngine.JointAngleLimits2D)
  (define-field-port
    limit-state
    #f
    #f
    (property:)
    UnityEngine.HingeJoint2D
    limitState
    UnityEngine.JointLimitState2D)
  (define-field-port
    reference-angle
    #f
    #f
    (property:)
    UnityEngine.HingeJoint2D
    referenceAngle
    System.Single)
  (define-field-port
    joint-angle
    #f
    #f
    (property:)
    UnityEngine.HingeJoint2D
    jointAngle
    System.Single)
  (define-field-port
    joint-speed
    #f
    #f
    (property:)
    UnityEngine.HingeJoint2D
    jointSpeed
    System.Single))
