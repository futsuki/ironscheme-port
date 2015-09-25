(library (jet-brains
          annotations
          cannot-apply-equality-operator-attribute)
  (export new is? cannot-apply-equality-operator-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             JetBrains.Annotations.CannotApplyEqualityOperatorAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is
      JetBrains.Annotations.CannotApplyEqualityOperatorAttribute
      a))
  (define (cannot-apply-equality-operator-attribute? a)
    (clr-is
      JetBrains.Annotations.CannotApplyEqualityOperatorAttribute
      a)))
