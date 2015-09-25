(library (jet-brains annotations invoker-parameter-name-attribute)
  (export new is? invoker-parameter-name-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             JetBrains.Annotations.InvokerParameterNameAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is JetBrains.Annotations.InvokerParameterNameAttribute a))
  (define (invoker-parameter-name-attribute? a)
    (clr-is JetBrains.Annotations.InvokerParameterNameAttribute a)))
