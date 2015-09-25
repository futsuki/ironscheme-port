(library (unity-engine unity-string)
  (export new is? unity-string? format)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.UnityString a ...)))))
  (define (is? a) (clr-is UnityEngine.UnityString a))
  (define (unity-string? a) (clr-is UnityEngine.UnityString a))
  (define-method-port
    format
    UnityEngine.UnityString
    Format
    (static: System.String System.String System.Object[])))
