(library (system xml mono-fixattribute)
  (export new is? mono-fixattribute? comment)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.MonoFIXAttribute a ...)))))
  (define (is? a) (clr-is System.Xml.MonoFIXAttribute a))
  (define (mono-fixattribute? a) (clr-is System.Xml.MonoFIXAttribute a))
  (define-field-port
    comment
    #f
    #f
    (property:)
    System.Xml.MonoFIXAttribute
    Comment
    System.String))
