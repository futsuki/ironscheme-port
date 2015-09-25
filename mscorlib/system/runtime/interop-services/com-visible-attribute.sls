(library (system runtime interop-services com-visible-attribute)
  (export new is? com-visible-attribute? value?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.InteropServices.ComVisibleAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.InteropServices.ComVisibleAttribute a))
  (define (com-visible-attribute? a)
    (clr-is System.Runtime.InteropServices.ComVisibleAttribute a))
  (define-field-port
    value?
    #f
    #f
    (property:)
    System.Runtime.InteropServices.ComVisibleAttribute
    Value
    System.Boolean))
