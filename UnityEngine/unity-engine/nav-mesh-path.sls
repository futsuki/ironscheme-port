(library (unity-engine nav-mesh-path)
  (export new
          is?
          nav-mesh-path?
          get-corners-non-alloc
          clear-corners
          corners
          status)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.NavMeshPath a ...)))))
  (define (is? a) (clr-is UnityEngine.NavMeshPath a))
  (define (nav-mesh-path? a) (clr-is UnityEngine.NavMeshPath a))
  (define-method-port
    get-corners-non-alloc
    UnityEngine.NavMeshPath
    GetCornersNonAlloc
    (System.Int32 UnityEngine.Vector3[]))
  (define-method-port
    clear-corners
    UnityEngine.NavMeshPath
    ClearCorners
    (System.Void))
  (define-field-port
    corners
    #f
    #f
    (property:)
    UnityEngine.NavMeshPath
    corners
    UnityEngine.Vector3[])
  (define-field-port
    status
    #f
    #f
    (property:)
    UnityEngine.NavMeshPath
    status
    UnityEngine.NavMeshPathStatus))
