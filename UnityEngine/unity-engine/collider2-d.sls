(library (unity-engine collider2-d)
  (export new
          is?
          collider2-d?
          is-touching?
          is-touching-layers?
          overlap-point?
          is-trigger?-get
          is-trigger?-set!
          is-trigger?-update!
          used-by-effector?-get
          used-by-effector?-set!
          used-by-effector?-update!
          offset-get
          offset-set!
          offset-update!
          attached-rigidbody
          shape-count
          bounds
          shared-material-get
          shared-material-set!
          shared-material-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.Collider2D a ...)))))
  (define (is? a) (clr-is UnityEngine.Collider2D a))
  (define (collider2-d? a) (clr-is UnityEngine.Collider2D a))
  (define-method-port
    is-touching?
    UnityEngine.Collider2D
    IsTouching
    (System.Boolean UnityEngine.Collider2D))
  (define-method-port
    is-touching-layers?
    UnityEngine.Collider2D
    IsTouchingLayers
    (System.Boolean)
    (System.Boolean System.Int32))
  (define-method-port
    overlap-point?
    UnityEngine.Collider2D
    OverlapPoint
    (System.Boolean UnityEngine.Vector2))
  (define-field-port
    is-trigger?-get
    is-trigger?-set!
    is-trigger?-update!
    (property:)
    UnityEngine.Collider2D
    isTrigger
    System.Boolean)
  (define-field-port
    used-by-effector?-get
    used-by-effector?-set!
    used-by-effector?-update!
    (property:)
    UnityEngine.Collider2D
    usedByEffector
    System.Boolean)
  (define-field-port
    offset-get
    offset-set!
    offset-update!
    (property:)
    UnityEngine.Collider2D
    offset
    UnityEngine.Vector2)
  (define-field-port
    attached-rigidbody
    #f
    #f
    (property:)
    UnityEngine.Collider2D
    attachedRigidbody
    UnityEngine.Rigidbody2D)
  (define-field-port
    shape-count
    #f
    #f
    (property:)
    UnityEngine.Collider2D
    shapeCount
    System.Int32)
  (define-field-port
    bounds
    #f
    #f
    (property:)
    UnityEngine.Collider2D
    bounds
    UnityEngine.Bounds)
  (define-field-port
    shared-material-get
    shared-material-set!
    shared-material-update!
    (property:)
    UnityEngine.Collider2D
    sharedMaterial
    UnityEngine.PhysicsMaterial2D))
