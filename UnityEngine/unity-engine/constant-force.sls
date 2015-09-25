(library (unity-engine constant-force)
  (export new
          is?
          constant-force?
          force-get
          force-set!
          force-update!
          relative-force-get
          relative-force-set!
          relative-force-update!
          torque-get
          torque-set!
          torque-update!
          relative-torque-get
          relative-torque-set!
          relative-torque-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.ConstantForce a ...)))))
  (define (is? a) (clr-is UnityEngine.ConstantForce a))
  (define (constant-force? a) (clr-is UnityEngine.ConstantForce a))
  (define-field-port
    force-get
    force-set!
    force-update!
    (property:)
    UnityEngine.ConstantForce
    force
    UnityEngine.Vector3)
  (define-field-port
    relative-force-get
    relative-force-set!
    relative-force-update!
    (property:)
    UnityEngine.ConstantForce
    relativeForce
    UnityEngine.Vector3)
  (define-field-port
    torque-get
    torque-set!
    torque-update!
    (property:)
    UnityEngine.ConstantForce
    torque
    UnityEngine.Vector3)
  (define-field-port
    relative-torque-get
    relative-torque-set!
    relative-torque-update!
    (property:)
    UnityEngine.ConstantForce
    relativeTorque
    UnityEngine.Vector3))
