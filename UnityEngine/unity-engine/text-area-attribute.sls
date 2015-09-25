(library (unity-engine text-area-attribute)
  (export new is? text-area-attribute? min-lines max-lines)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.TextAreaAttribute a ...)))))
  (define (is? a) (clr-is UnityEngine.TextAreaAttribute a))
  (define (text-area-attribute? a)
    (clr-is UnityEngine.TextAreaAttribute a))
  (define-field-port
    min-lines
    #f
    #f
    ()
    UnityEngine.TextAreaAttribute
    minLines
    System.Int32)
  (define-field-port
    max-lines
    #f
    #f
    ()
    UnityEngine.TextAreaAttribute
    maxLines
    System.Int32))
