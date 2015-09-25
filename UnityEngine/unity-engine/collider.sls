(library (unity-engine collider)
  (export new
          is?
          collider?
          raycast?
          closest-point-on-bounds
          enabled?-get
          enabled?-set!
          enabled?-update!
          attached-rigidbody
          is-trigger?-get
          is-trigger?-set!
          is-trigger?-update!
          contact-offset-get
          contact-offset-set!
          contact-offset-update!
          material-get
          material-set!
          material-update!
          shared-material-get
          shared-material-set!
          shared-material-update!
          bounds)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.Collider a ...)))))
  (define (is? a) (clr-is UnityEngine.Collider a))
  (define (collider? a) (clr-is UnityEngine.Collider a))
  (define-method-port
    raycast?
    UnityEngine.Collider
    Raycast
    (System.Boolean
      UnityEngine.Ray
      UnityEngine.RaycastHit&
      System.Single))
  (define-method-port
    closest-point-on-bounds
    UnityEngine.Collider
    ClosestPointOnBounds
    (UnityEngine.Vector3 UnityEngine.Vector3))
  (define-field-port
    enabled?-get
    enabled?-set!
    enabled?-update!
    (property:)
    UnityEngine.Collider
    enabled
    System.Boolean)
  (define-field-port
    attached-rigidbody
    #f
    #f
    (property:)
    UnityEngine.Collider
    attachedRigidbody
    UnityEngine.Rigidbody)
  (define-field-port
    is-trigger?-get
    is-trigger?-set!
    is-trigger?-update!
    (property:)
    UnityEngine.Collider
    isTrigger
    System.Boolean)
  (define-field-port
    contact-offset-get
    contact-offset-set!
    contact-offset-update!
    (property:)
    UnityEngine.Collider
    contactOffset
    System.Single)
  (define-field-port
    material-get
    material-set!
    material-update!
    (property:)
    UnityEngine.Collider
    material
    UnityEngine.PhysicMaterial)
  (define-field-port
    shared-material-get
    shared-material-set!
    shared-material-update!
    (property:)
    UnityEngine.Collider
    sharedMaterial
    UnityEngine.PhysicMaterial)
  (define-field-port
    bounds
    #f
    #f
    (property:)
    UnityEngine.Collider
    bounds
    UnityEngine.Bounds))
