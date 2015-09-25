(library (unity-engine polygon-collider2-d)
  (export new
          is?
          polygon-collider2-d?
          create-primitive
          get-total-point-count
          set-path
          get-path
          points-get
          points-set!
          points-update!
          path-count-get
          path-count-set!
          path-count-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.PolygonCollider2D a ...)))))
  (define (is? a) (clr-is UnityEngine.PolygonCollider2D a))
  (define (polygon-collider2-d? a)
    (clr-is UnityEngine.PolygonCollider2D a))
  (define-method-port
    create-primitive
    UnityEngine.PolygonCollider2D
    CreatePrimitive
    (System.Void System.Int32)
    (System.Void System.Int32 UnityEngine.Vector2)
    (System.Void System.Int32 UnityEngine.Vector2 UnityEngine.Vector2))
  (define-method-port
    get-total-point-count
    UnityEngine.PolygonCollider2D
    GetTotalPointCount
    (System.Int32))
  (define-method-port
    set-path
    UnityEngine.PolygonCollider2D
    SetPath
    (System.Void System.Int32 UnityEngine.Vector2[]))
  (define-method-port
    get-path
    UnityEngine.PolygonCollider2D
    GetPath
    (UnityEngine.Vector2[] System.Int32))
  (define-field-port
    points-get
    points-set!
    points-update!
    (property:)
    UnityEngine.PolygonCollider2D
    points
    UnityEngine.Vector2[])
  (define-field-port
    path-count-get
    path-count-set!
    path-count-update!
    (property:)
    UnityEngine.PolygonCollider2D
    pathCount
    System.Int32))
