(library (system reflection emit custom-attribute-builder)
  (export new is? custom-attribute-builder?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Reflection.Emit.CustomAttributeBuilder
             a
             ...)))))
  (define (is? a)
    (clr-is System.Reflection.Emit.CustomAttributeBuilder a))
  (define (custom-attribute-builder? a)
    (clr-is System.Reflection.Emit.CustomAttributeBuilder a)))
