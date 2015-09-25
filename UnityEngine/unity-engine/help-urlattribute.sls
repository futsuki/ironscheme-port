(library (unity-engine help-urlattribute)
  (export new is? help-urlattribute? url)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.HelpURLAttribute a ...)))))
  (define (is? a) (clr-is UnityEngine.HelpURLAttribute a))
  (define (help-urlattribute? a)
    (clr-is UnityEngine.HelpURLAttribute a))
  (define-field-port
    url
    #f
    #f
    (property:)
    UnityEngine.HelpURLAttribute
    URL
    System.String))
