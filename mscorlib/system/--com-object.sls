(library (system --com-object)
  (export new is? --com-object? get-hash-code equals?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.__ComObject a ...)))))
  (define (is? a) (clr-is System.__ComObject a))
  (define (--com-object? a) (clr-is System.__ComObject a))
  (define-method-port
    get-hash-code
    System.__ComObject
    GetHashCode
    (System.Int32))
  (define-method-port
    equals?
    System.__ComObject
    Equals
    (System.Boolean System.Object)))
