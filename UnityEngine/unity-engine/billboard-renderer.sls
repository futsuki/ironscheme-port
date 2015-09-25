(library (unity-engine billboard-renderer)
  (export new
          is?
          billboard-renderer?
          billboard-get
          billboard-set!
          billboard-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.BillboardRenderer a ...)))))
  (define (is? a) (clr-is UnityEngine.BillboardRenderer a))
  (define (billboard-renderer? a)
    (clr-is UnityEngine.BillboardRenderer a))
  (define-field-port
    billboard-get
    billboard-set!
    billboard-update!
    (property:)
    UnityEngine.BillboardRenderer
    billboard
    UnityEngine.BillboardAsset))
