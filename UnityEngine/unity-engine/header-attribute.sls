(library (unity-engine header-attribute)
  (export new is? header-attribute? header)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.HeaderAttribute a ...)))))
  (define (is? a) (clr-is UnityEngine.HeaderAttribute a))
  (define (header-attribute? a) (clr-is UnityEngine.HeaderAttribute a))
  (define-field-port
    header
    #f
    #f
    ()
    UnityEngine.HeaderAttribute
    header
    System.String))
