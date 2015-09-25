(library (unity-engine point-effector2-d)
  (export new
          is?
          point-effector2-d?
          force-magnitude-get
          force-magnitude-set!
          force-magnitude-update!
          force-variation-get
          force-variation-set!
          force-variation-update!
          distance-scale-get
          distance-scale-set!
          distance-scale-update!
          drag-get
          drag-set!
          drag-update!
          angular-drag-get
          angular-drag-set!
          angular-drag-update!
          force-source-get
          force-source-set!
          force-source-update!
          force-target-get
          force-target-set!
          force-target-update!
          force-mode-get
          force-mode-set!
          force-mode-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.PointEffector2D a ...)))))
  (define (is? a) (clr-is UnityEngine.PointEffector2D a))
  (define (point-effector2-d? a) (clr-is UnityEngine.PointEffector2D a))
  (define-field-port
    force-magnitude-get
    force-magnitude-set!
    force-magnitude-update!
    (property:)
    UnityEngine.PointEffector2D
    forceMagnitude
    System.Single)
  (define-field-port
    force-variation-get
    force-variation-set!
    force-variation-update!
    (property:)
    UnityEngine.PointEffector2D
    forceVariation
    System.Single)
  (define-field-port
    distance-scale-get
    distance-scale-set!
    distance-scale-update!
    (property:)
    UnityEngine.PointEffector2D
    distanceScale
    System.Single)
  (define-field-port
    drag-get
    drag-set!
    drag-update!
    (property:)
    UnityEngine.PointEffector2D
    drag
    System.Single)
  (define-field-port
    angular-drag-get
    angular-drag-set!
    angular-drag-update!
    (property:)
    UnityEngine.PointEffector2D
    angularDrag
    System.Single)
  (define-field-port
    force-source-get
    force-source-set!
    force-source-update!
    (property:)
    UnityEngine.PointEffector2D
    forceSource
    UnityEngine.EffectorSelection2D)
  (define-field-port
    force-target-get
    force-target-set!
    force-target-update!
    (property:)
    UnityEngine.PointEffector2D
    forceTarget
    UnityEngine.EffectorSelection2D)
  (define-field-port
    force-mode-get
    force-mode-set!
    force-mode-update!
    (property:)
    UnityEngine.PointEffector2D
    forceMode
    UnityEngine.EffectorForceMode2D))
