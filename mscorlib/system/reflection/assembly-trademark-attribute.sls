(library (system reflection assembly-trademark-attribute)
  (export new is? assembly-trademark-attribute? trademark)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Reflection.AssemblyTrademarkAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Reflection.AssemblyTrademarkAttribute a))
  (define (assembly-trademark-attribute? a)
    (clr-is System.Reflection.AssemblyTrademarkAttribute a))
  (define-field-port
    trademark
    #f
    #f
    (property:)
    System.Reflection.AssemblyTrademarkAttribute
    Trademark
    System.String))
