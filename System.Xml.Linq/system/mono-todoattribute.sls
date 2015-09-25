(library (system mono-todoattribute)
  (export new is? mono-todoattribute? comment)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.MonoTODOAttribute a ...)))))
  (define (is? a) (clr-is System.MonoTODOAttribute a))
  (define (mono-todoattribute? a) (clr-is System.MonoTODOAttribute a))
  (define-field-port
    comment
    #f
    #f
    (property:)
    System.MonoTODOAttribute
    Comment
    System.String))
