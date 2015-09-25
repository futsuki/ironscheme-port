(library (system clscompliant-attribute)
  (export new is? clscompliant-attribute? is-compliant?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.CLSCompliantAttribute a ...)))))
  (define (is? a) (clr-is System.CLSCompliantAttribute a))
  (define (clscompliant-attribute? a)
    (clr-is System.CLSCompliantAttribute a))
  (define-field-port
    is-compliant?
    #f
    #f
    (property:)
    System.CLSCompliantAttribute
    IsCompliant
    System.Boolean))
