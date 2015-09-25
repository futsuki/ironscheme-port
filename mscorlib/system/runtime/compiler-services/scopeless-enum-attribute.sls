(library (system runtime compiler-services scopeless-enum-attribute)
  (export new is? scopeless-enum-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.CompilerServices.ScopelessEnumAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.CompilerServices.ScopelessEnumAttribute a))
  (define (scopeless-enum-attribute? a)
    (clr-is System.Runtime.CompilerServices.ScopelessEnumAttribute a)))
