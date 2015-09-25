(library (unity-engine resource-request)
  (export new is? resource-request? asset)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.ResourceRequest a ...)))))
  (define (is? a) (clr-is UnityEngine.ResourceRequest a))
  (define (resource-request? a) (clr-is UnityEngine.ResourceRequest a))
  (define-field-port
    asset
    #f
    #f
    (property:)
    UnityEngine.ResourceRequest
    asset
    UnityEngine.Object))
