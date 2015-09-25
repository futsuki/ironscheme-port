(library (unity-engine occlusion-area)
  (export new
          is?
          occlusion-area?
          center-get
          center-set!
          center-update!
          size-get
          size-set!
          size-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.OcclusionArea a ...)))))
  (define (is? a) (clr-is UnityEngine.OcclusionArea a))
  (define (occlusion-area? a) (clr-is UnityEngine.OcclusionArea a))
  (define-field-port
    center-get
    center-set!
    center-update!
    (property:)
    UnityEngine.OcclusionArea
    center
    UnityEngine.Vector3)
  (define-field-port
    size-get
    size-set!
    size-update!
    (property:)
    UnityEngine.OcclusionArea
    size
    UnityEngine.Vector3))
