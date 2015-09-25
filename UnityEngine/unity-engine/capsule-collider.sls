(library (unity-engine capsule-collider)
  (export new
          is?
          capsule-collider?
          center-get
          center-set!
          center-update!
          radius-get
          radius-set!
          radius-update!
          height-get
          height-set!
          height-update!
          direction-get
          direction-set!
          direction-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.CapsuleCollider a ...)))))
  (define (is? a) (clr-is UnityEngine.CapsuleCollider a))
  (define (capsule-collider? a) (clr-is UnityEngine.CapsuleCollider a))
  (define-field-port
    center-get
    center-set!
    center-update!
    (property:)
    UnityEngine.CapsuleCollider
    center
    UnityEngine.Vector3)
  (define-field-port
    radius-get
    radius-set!
    radius-update!
    (property:)
    UnityEngine.CapsuleCollider
    radius
    System.Single)
  (define-field-port
    height-get
    height-set!
    height-update!
    (property:)
    UnityEngine.CapsuleCollider
    height
    System.Single)
  (define-field-port
    direction-get
    direction-set!
    direction-update!
    (property:)
    UnityEngine.CapsuleCollider
    direction
    System.Int32))
