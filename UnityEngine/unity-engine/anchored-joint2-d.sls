(library (unity-engine anchored-joint2-d)
  (export new
          is?
          anchored-joint2-d?
          anchor-get
          anchor-set!
          anchor-update!
          connected-anchor-get
          connected-anchor-set!
          connected-anchor-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.AnchoredJoint2D a ...)))))
  (define (is? a) (clr-is UnityEngine.AnchoredJoint2D a))
  (define (anchored-joint2-d? a) (clr-is UnityEngine.AnchoredJoint2D a))
  (define-field-port
    anchor-get
    anchor-set!
    anchor-update!
    (property:)
    UnityEngine.AnchoredJoint2D
    anchor
    UnityEngine.Vector2)
  (define-field-port
    connected-anchor-get
    connected-anchor-set!
    connected-anchor-update!
    (property:)
    UnityEngine.AnchoredJoint2D
    connectedAnchor
    UnityEngine.Vector2))
