(library (unity-engine spring-joint2-d)
  (export new
          is?
          spring-joint2-d?
          get-reaction-force
          get-reaction-torque
          distance-get
          distance-set!
          distance-update!
          damping-ratio-get
          damping-ratio-set!
          damping-ratio-update!
          frequency-get
          frequency-set!
          frequency-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.SpringJoint2D a ...)))))
  (define (is? a) (clr-is UnityEngine.SpringJoint2D a))
  (define (spring-joint2-d? a) (clr-is UnityEngine.SpringJoint2D a))
  (define-method-port
    get-reaction-force
    UnityEngine.SpringJoint2D
    GetReactionForce
    (UnityEngine.Vector2 System.Single))
  (define-method-port
    get-reaction-torque
    UnityEngine.SpringJoint2D
    GetReactionTorque
    (System.Single System.Single))
  (define-field-port
    distance-get
    distance-set!
    distance-update!
    (property:)
    UnityEngine.SpringJoint2D
    distance
    System.Single)
  (define-field-port
    damping-ratio-get
    damping-ratio-set!
    damping-ratio-update!
    (property:)
    UnityEngine.SpringJoint2D
    dampingRatio
    System.Single)
  (define-field-port
    frequency-get
    frequency-set!
    frequency-update!
    (property:)
    UnityEngine.SpringJoint2D
    frequency
    System.Single))
