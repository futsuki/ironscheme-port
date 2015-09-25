(library (jet-brains annotations public-apiattribute)
  (export new is? public-apiattribute? comment)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new JetBrains.Annotations.PublicAPIAttribute a ...)))))
  (define (is? a) (clr-is JetBrains.Annotations.PublicAPIAttribute a))
  (define (public-apiattribute? a)
    (clr-is JetBrains.Annotations.PublicAPIAttribute a))
  (define-field-port
    comment
    #f
    #f
    (property:)
    JetBrains.Annotations.PublicAPIAttribute
    Comment
    System.String))
