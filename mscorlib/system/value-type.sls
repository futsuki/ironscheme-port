(library (system value-type)
  (export is? value-type? get-hash-code to-string equals?)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.ValueType a))
  (define (value-type? a) (clr-is System.ValueType a))
  (define-method-port
    get-hash-code
    System.ValueType
    GetHashCode
    (System.Int32))
  (define-method-port
    to-string
    System.ValueType
    ToString
    (System.String))
  (define-method-port
    equals?
    System.ValueType
    Equals
    (System.Boolean System.Object)))
