(library (system runtime compiler-services discardable-attribute)
  (export new is? discardable-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.CompilerServices.DiscardableAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.CompilerServices.DiscardableAttribute a))
  (define (discardable-attribute? a)
    (clr-is System.Runtime.CompilerServices.DiscardableAttribute a)))
