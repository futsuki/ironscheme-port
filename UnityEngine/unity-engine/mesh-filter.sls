(library (unity-engine mesh-filter)
  (export new
          is?
          mesh-filter?
          mesh-get
          mesh-set!
          mesh-update!
          shared-mesh-get
          shared-mesh-set!
          shared-mesh-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.MeshFilter a ...)))))
  (define (is? a) (clr-is UnityEngine.MeshFilter a))
  (define (mesh-filter? a) (clr-is UnityEngine.MeshFilter a))
  (define-field-port
    mesh-get
    mesh-set!
    mesh-update!
    (property:)
    UnityEngine.MeshFilter
    mesh
    UnityEngine.Mesh)
  (define-field-port
    shared-mesh-get
    shared-mesh-set!
    shared-mesh-update!
    (property:)
    UnityEngine.MeshFilter
    sharedMesh
    UnityEngine.Mesh))
