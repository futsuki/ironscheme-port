(library (unity-engine geometry-utility)
  (export new
          is?
          geometry-utility?
          calculate-frustum-planes
          test-planes-aabb?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.GeometryUtility a ...)))))
  (define (is? a) (clr-is UnityEngine.GeometryUtility a))
  (define (geometry-utility? a) (clr-is UnityEngine.GeometryUtility a))
  (define-method-port
    calculate-frustum-planes
    UnityEngine.GeometryUtility
    CalculateFrustumPlanes
    (static: UnityEngine.Plane[] UnityEngine.Matrix4x4)
    (static: UnityEngine.Plane[] UnityEngine.Camera))
  (define-method-port
    test-planes-aabb?
    UnityEngine.GeometryUtility
    TestPlanesAABB
    (static: System.Boolean UnityEngine.Plane[] UnityEngine.Bounds)))
