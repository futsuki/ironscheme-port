(library (unity-engine mesh-collider)
  (export new
          is?
          mesh-collider?
          shared-mesh-get
          shared-mesh-set!
          shared-mesh-update!
          convex?-get
          convex?-set!
          convex?-update!
          smooth-sphere-collisions?-get
          smooth-sphere-collisions?-set!
          smooth-sphere-collisions?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.MeshCollider a ...)))))
  (define (is? a) (clr-is UnityEngine.MeshCollider a))
  (define (mesh-collider? a) (clr-is UnityEngine.MeshCollider a))
  (define-field-port
    shared-mesh-get
    shared-mesh-set!
    shared-mesh-update!
    (property:)
    UnityEngine.MeshCollider
    sharedMesh
    UnityEngine.Mesh)
  (define-field-port
    convex?-get
    convex?-set!
    convex?-update!
    (property:)
    UnityEngine.MeshCollider
    convex
    System.Boolean)
  (define-field-port
    smooth-sphere-collisions?-get
    smooth-sphere-collisions?-set!
    smooth-sphere-collisions?-update!
    (property:)
    UnityEngine.MeshCollider
    smoothSphereCollisions
    System.Boolean))
