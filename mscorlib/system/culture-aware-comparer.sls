(library (system culture-aware-comparer)
  (export new is? culture-aware-comparer? get-hash-code compare equals?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.CultureAwareComparer a ...)))))
  (define (is? a) (clr-is System.CultureAwareComparer a))
  (define (culture-aware-comparer? a)
    (clr-is System.CultureAwareComparer a))
  (define-method-port
    get-hash-code
    System.CultureAwareComparer
    GetHashCode
    (System.Int32 System.String))
  (define-method-port
    compare
    System.CultureAwareComparer
    Compare
    (System.Int32 System.String System.String))
  (define-method-port
    equals?
    System.CultureAwareComparer
    Equals
    (System.Boolean System.String System.String)))
