(library (unity-engine physic-material)
  (export new
          is?
          physic-material?
          dynamic-friction-get
          dynamic-friction-set!
          dynamic-friction-update!
          static-friction-get
          static-friction-set!
          static-friction-update!
          bounciness-get
          bounciness-set!
          bounciness-update!
          bouncyness-get
          bouncyness-set!
          bouncyness-update!
          friction-direction2-get
          friction-direction2-set!
          friction-direction2-update!
          dynamic-friction2-get
          dynamic-friction2-set!
          dynamic-friction2-update!
          static-friction2-get
          static-friction2-set!
          static-friction2-update!
          friction-combine-get
          friction-combine-set!
          friction-combine-update!
          bounce-combine-get
          bounce-combine-set!
          bounce-combine-update!
          friction-direction-get
          friction-direction-set!
          friction-direction-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.PhysicMaterial a ...)))))
  (define (is? a) (clr-is UnityEngine.PhysicMaterial a))
  (define (physic-material? a) (clr-is UnityEngine.PhysicMaterial a))
  (define-field-port
    dynamic-friction-get
    dynamic-friction-set!
    dynamic-friction-update!
    (property:)
    UnityEngine.PhysicMaterial
    dynamicFriction
    System.Single)
  (define-field-port
    static-friction-get
    static-friction-set!
    static-friction-update!
    (property:)
    UnityEngine.PhysicMaterial
    staticFriction
    System.Single)
  (define-field-port
    bounciness-get
    bounciness-set!
    bounciness-update!
    (property:)
    UnityEngine.PhysicMaterial
    bounciness
    System.Single)
  (define-field-port
    bouncyness-get
    bouncyness-set!
    bouncyness-update!
    (property:)
    UnityEngine.PhysicMaterial
    bouncyness
    System.Single)
  (define-field-port
    friction-direction2-get
    friction-direction2-set!
    friction-direction2-update!
    (property:)
    UnityEngine.PhysicMaterial
    frictionDirection2
    UnityEngine.Vector3)
  (define-field-port
    dynamic-friction2-get
    dynamic-friction2-set!
    dynamic-friction2-update!
    (property:)
    UnityEngine.PhysicMaterial
    dynamicFriction2
    System.Single)
  (define-field-port
    static-friction2-get
    static-friction2-set!
    static-friction2-update!
    (property:)
    UnityEngine.PhysicMaterial
    staticFriction2
    System.Single)
  (define-field-port
    friction-combine-get
    friction-combine-set!
    friction-combine-update!
    (property:)
    UnityEngine.PhysicMaterial
    frictionCombine
    UnityEngine.PhysicMaterialCombine)
  (define-field-port
    bounce-combine-get
    bounce-combine-set!
    bounce-combine-update!
    (property:)
    UnityEngine.PhysicMaterial
    bounceCombine
    UnityEngine.PhysicMaterialCombine)
  (define-field-port
    friction-direction-get
    friction-direction-set!
    friction-direction-update!
    (property:)
    UnityEngine.PhysicMaterial
    frictionDirection
    UnityEngine.Vector3))