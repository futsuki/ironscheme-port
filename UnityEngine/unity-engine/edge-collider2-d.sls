(library (unity-engine edge-collider2-d)
  (export new
          is?
          edge-collider2-d?
          reset
          edge-count
          point-count
          points-get
          points-set!
          points-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.EdgeCollider2D a ...)))))
  (define (is? a) (clr-is UnityEngine.EdgeCollider2D a))
  (define (edge-collider2-d? a) (clr-is UnityEngine.EdgeCollider2D a))
  (define-method-port
    reset
    UnityEngine.EdgeCollider2D
    Reset
    (System.Void))
  (define-field-port
    edge-count
    #f
    #f
    (property:)
    UnityEngine.EdgeCollider2D
    edgeCount
    System.Int32)
  (define-field-port
    point-count
    #f
    #f
    (property:)
    UnityEngine.EdgeCollider2D
    pointCount
    System.Int32)
  (define-field-port
    points-get
    points-set!
    points-update!
    (property:)
    UnityEngine.EdgeCollider2D
    points
    UnityEngine.Vector2[]))
