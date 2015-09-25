(library (system ordinal-comparer)
  (export new is? ordinal-comparer? get-hash-code compare equals?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.OrdinalComparer a ...)))))
  (define (is? a) (clr-is System.OrdinalComparer a))
  (define (ordinal-comparer? a) (clr-is System.OrdinalComparer a))
  (define-method-port
    get-hash-code
    System.OrdinalComparer
    GetHashCode
    (System.Int32 System.String))
  (define-method-port
    compare
    System.OrdinalComparer
    Compare
    (System.Int32 System.String System.String))
  (define-method-port
    equals?
    System.OrdinalComparer
    Equals
    (System.Boolean System.String System.String)))
