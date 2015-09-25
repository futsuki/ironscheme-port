(library (system runtime compiler-services decimal-constant-attribute)
  (export new is? decimal-constant-attribute? value)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.CompilerServices.DecimalConstantAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.CompilerServices.DecimalConstantAttribute a))
  (define (decimal-constant-attribute? a)
    (clr-is System.Runtime.CompilerServices.DecimalConstantAttribute a))
  (define-field-port
    value
    #f
    #f
    (property:)
    System.Runtime.CompilerServices.DecimalConstantAttribute
    Value
    System.Decimal))
