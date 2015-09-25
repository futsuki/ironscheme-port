(library (system object)
  (export new
          is?
          object?
          get-type
          get-hash-code
          reference-equals?
          to-string
          equals?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e () ((_ a ...) #'(clr-new System.Object a ...)))))
  (define (is? a) (clr-is System.Object a))
  (define (object? a) (clr-is System.Object a))
  (define-method-port get-type System.Object GetType (System.Type))
  (define-method-port
    get-hash-code
    System.Object
    GetHashCode
    (System.Int32))
  (define-method-port
    reference-equals?
    System.Object
    ReferenceEquals
    (static: System.Boolean System.Object System.Object))
  (define-method-port to-string System.Object ToString (System.String))
  (define-method-port
    equals?
    System.Object
    Equals
    (static: System.Boolean System.Object System.Object)
    (System.Boolean System.Object)))
