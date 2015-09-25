(library (jet-brains annotations no-enumeration-attribute)
  (export new is? no-enumeration-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             JetBrains.Annotations.NoEnumerationAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is JetBrains.Annotations.NoEnumerationAttribute a))
  (define (no-enumeration-attribute? a)
    (clr-is JetBrains.Annotations.NoEnumerationAttribute a)))
