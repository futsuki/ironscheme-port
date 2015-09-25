(library (unity-engine sphere-collider)
  (export new
          is?
          sphere-collider?
          center-get
          center-set!
          center-update!
          radius-get
          radius-set!
          radius-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.SphereCollider a ...)))))
  (define (is? a) (clr-is UnityEngine.SphereCollider a))
  (define (sphere-collider? a) (clr-is UnityEngine.SphereCollider a))
  (define-field-port
    center-get
    center-set!
    center-update!
    (property:)
    UnityEngine.SphereCollider
    center
    UnityEngine.Vector3)
  (define-field-port
    radius-get
    radius-set!
    radius-update!
    (property:)
    UnityEngine.SphereCollider
    radius
    System.Single))
