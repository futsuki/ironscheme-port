(library (unity-engine distance-joint2-d)
  (export new
          is?
          distance-joint2-d?
          get-reaction-force
          get-reaction-torque
          distance-get
          distance-set!
          distance-update!
          max-distance-only?-get
          max-distance-only?-set!
          max-distance-only?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.DistanceJoint2D a ...)))))
  (define (is? a) (clr-is UnityEngine.DistanceJoint2D a))
  (define (distance-joint2-d? a) (clr-is UnityEngine.DistanceJoint2D a))
  (define-method-port
    get-reaction-force
    UnityEngine.DistanceJoint2D
    GetReactionForce
    (UnityEngine.Vector2 System.Single))
  (define-method-port
    get-reaction-torque
    UnityEngine.DistanceJoint2D
    GetReactionTorque
    (System.Single System.Single))
  (define-field-port
    distance-get
    distance-set!
    distance-update!
    (property:)
    UnityEngine.DistanceJoint2D
    distance
    System.Single)
  (define-field-port
    max-distance-only?-get
    max-distance-only?-set!
    max-distance-only?-update!
    (property:)
    UnityEngine.DistanceJoint2D
    maxDistanceOnly
    System.Boolean))
