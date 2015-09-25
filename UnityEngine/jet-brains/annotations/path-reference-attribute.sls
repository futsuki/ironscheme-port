(library (jet-brains annotations path-reference-attribute)
  (export new is? path-reference-attribute? base-path)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             JetBrains.Annotations.PathReferenceAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is JetBrains.Annotations.PathReferenceAttribute a))
  (define (path-reference-attribute? a)
    (clr-is JetBrains.Annotations.PathReferenceAttribute a))
  (define-field-port
    base-path
    #f
    #f
    (property:)
    JetBrains.Annotations.PathReferenceAttribute
    BasePath
    System.String))
