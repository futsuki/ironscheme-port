(library (unity-engine tracked-reference)
  (export is? tracked-reference? get-hash-code equals?)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is UnityEngine.TrackedReference a))
  (define (tracked-reference? a)
    (clr-is UnityEngine.TrackedReference a))
  (define-method-port
    get-hash-code
    UnityEngine.TrackedReference
    GetHashCode
    (System.Int32))
  (define-method-port
    equals?
    UnityEngine.TrackedReference
    Equals
    (System.Boolean System.Object)))
