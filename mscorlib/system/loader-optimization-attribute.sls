(library (system loader-optimization-attribute)
  (export new is? loader-optimization-attribute? value)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.LoaderOptimizationAttribute a ...)))))
  (define (is? a) (clr-is System.LoaderOptimizationAttribute a))
  (define (loader-optimization-attribute? a)
    (clr-is System.LoaderOptimizationAttribute a))
  (define-field-port
    value
    #f
    #f
    (property:)
    System.LoaderOptimizationAttribute
    Value
    System.LoaderOptimization))
