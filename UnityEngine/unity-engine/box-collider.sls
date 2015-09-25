(library (unity-engine box-collider)
  (export new
          is?
          box-collider?
          center-get
          center-set!
          center-update!
          size-get
          size-set!
          size-update!
          extents-get
          extents-set!
          extents-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.BoxCollider a ...)))))
  (define (is? a) (clr-is UnityEngine.BoxCollider a))
  (define (box-collider? a) (clr-is UnityEngine.BoxCollider a))
  (define-field-port
    center-get
    center-set!
    center-update!
    (property:)
    UnityEngine.BoxCollider
    center
    UnityEngine.Vector3)
  (define-field-port
    size-get
    size-set!
    size-update!
    (property:)
    UnityEngine.BoxCollider
    size
    UnityEngine.Vector3)
  (define-field-port
    extents-get
    extents-set!
    extents-update!
    (property:)
    UnityEngine.BoxCollider
    extents
    UnityEngine.Vector3))
