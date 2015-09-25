(library (unity-engine occlusion-portal)
  (export new is? occlusion-portal? open?-get open?-set! open?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.OcclusionPortal a ...)))))
  (define (is? a) (clr-is UnityEngine.OcclusionPortal a))
  (define (occlusion-portal? a) (clr-is UnityEngine.OcclusionPortal a))
  (define-field-port
    open?-get
    open?-set!
    open?-update!
    (property:)
    UnityEngine.OcclusionPortal
    open
    System.Boolean))
