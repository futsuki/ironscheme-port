(library (system runtime compiler-services unsafe-value-type-attribute)
  (export new is? unsafe-value-type-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.CompilerServices.UnsafeValueTypeAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.CompilerServices.UnsafeValueTypeAttribute a))
  (define (unsafe-value-type-attribute? a)
    (clr-is
      System.Runtime.CompilerServices.UnsafeValueTypeAttribute
      a)))
