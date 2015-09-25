(library (jet-brains annotations assertion-method-attribute)
  (export new is? assertion-method-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             JetBrains.Annotations.AssertionMethodAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is JetBrains.Annotations.AssertionMethodAttribute a))
  (define (assertion-method-attribute? a)
    (clr-is JetBrains.Annotations.AssertionMethodAttribute a)))
