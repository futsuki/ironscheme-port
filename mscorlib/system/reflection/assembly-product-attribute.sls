(library (system reflection assembly-product-attribute)
  (export new is? assembly-product-attribute? product)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Reflection.AssemblyProductAttribute
             a
             ...)))))
  (define (is? a) (clr-is System.Reflection.AssemblyProductAttribute a))
  (define (assembly-product-attribute? a)
    (clr-is System.Reflection.AssemblyProductAttribute a))
  (define-field-port
    product
    #f
    #f
    (property:)
    System.Reflection.AssemblyProductAttribute
    Product
    System.String))
