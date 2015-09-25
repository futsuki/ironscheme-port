(library (unity-engine wheel-joint2-d)
  (export new
          is?
          wheel-joint2-d?
          get-motor-torque
          suspension-get
          suspension-set!
          suspension-update!
          use-motor?-get
          use-motor?-set!
          use-motor?-update!
          motor-get
          motor-set!
          motor-update!
          joint-translation
          joint-speed)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.WheelJoint2D a ...)))))
  (define (is? a) (clr-is UnityEngine.WheelJoint2D a))
  (define (wheel-joint2-d? a) (clr-is UnityEngine.WheelJoint2D a))
  (define-method-port
    get-motor-torque
    UnityEngine.WheelJoint2D
    GetMotorTorque
    (System.Single System.Single))
  (define-field-port
    suspension-get
    suspension-set!
    suspension-update!
    (property:)
    UnityEngine.WheelJoint2D
    suspension
    UnityEngine.JointSuspension2D)
  (define-field-port
    use-motor?-get
    use-motor?-set!
    use-motor?-update!
    (property:)
    UnityEngine.WheelJoint2D
    useMotor
    System.Boolean)
  (define-field-port
    motor-get
    motor-set!
    motor-update!
    (property:)
    UnityEngine.WheelJoint2D
    motor
    UnityEngine.JointMotor2D)
  (define-field-port
    joint-translation
    #f
    #f
    (property:)
    UnityEngine.WheelJoint2D
    jointTranslation
    System.Single)
  (define-field-port
    joint-speed
    #f
    #f
    (property:)
    UnityEngine.WheelJoint2D
    jointSpeed
    System.Single))
