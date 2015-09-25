(library (unity-engine skybox)
  (export new is? skybox? material-get material-set! material-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.Skybox a ...)))))
  (define (is? a) (clr-is UnityEngine.Skybox a))
  (define (skybox? a) (clr-is UnityEngine.Skybox a))
  (define-field-port
    material-get
    material-set!
    material-update!
    (property:)
    UnityEngine.Skybox
    material
    UnityEngine.Material))
