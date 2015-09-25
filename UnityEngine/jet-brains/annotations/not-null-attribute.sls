(library (jet-brains annotations not-null-attribute)
  (export new is? not-null-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new JetBrains.Annotations.NotNullAttribute a ...)))))
  (define (is? a) (clr-is JetBrains.Annotations.NotNullAttribute a))
  (define (not-null-attribute? a)
    (clr-is JetBrains.Annotations.NotNullAttribute a)))