(library (jet-brains annotations instant-handle-attribute)
  (export new is? instant-handle-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             JetBrains.Annotations.InstantHandleAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is JetBrains.Annotations.InstantHandleAttribute a))
  (define (instant-handle-attribute? a)
    (clr-is JetBrains.Annotations.InstantHandleAttribute a)))
