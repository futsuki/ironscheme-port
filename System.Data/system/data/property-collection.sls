(library (system data property-collection)
  (export new is? property-collection?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Data.PropertyCollection a ...)))))
  (define (is? a) (clr-is System.Data.PropertyCollection a))
  (define (property-collection? a)
    (clr-is System.Data.PropertyCollection a)))
