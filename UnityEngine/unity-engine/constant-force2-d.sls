(library (unity-engine constant-force2-d)
  (export new
          is?
          constant-force2-d?
          force-get
          force-set!
          force-update!
          relative-force-get
          relative-force-set!
          relative-force-update!
          torque-get
          torque-set!
          torque-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.ConstantForce2D a ...)))))
  (define (is? a) (clr-is UnityEngine.ConstantForce2D a))
  (define (constant-force2-d? a) (clr-is UnityEngine.ConstantForce2D a))
  (define-field-port
    force-get
    force-set!
    force-update!
    (property:)
    UnityEngine.ConstantForce2D
    force
    UnityEngine.Vector2)
  (define-field-port
    relative-force-get
    relative-force-set!
    relative-force-update!
    (property:)
    UnityEngine.ConstantForce2D
    relativeForce
    UnityEngine.Vector2)
  (define-field-port
    torque-get
    torque-set!
    torque-update!
    (property:)
    UnityEngine.ConstantForce2D
    torque
    System.Single))
