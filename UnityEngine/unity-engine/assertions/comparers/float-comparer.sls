(library (unity-engine assertions comparers float-comparer)
  (export new
          is?
          float-comparer?
          get-hash-code
          are-equal?
          are-equal-relative?
          equals?
          k-epsilon
          s-comparer-with-default-tolerance)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             UnityEngine.Assertions.Comparers.FloatComparer
             a
             ...)))))
  (define (is? a)
    (clr-is UnityEngine.Assertions.Comparers.FloatComparer a))
  (define (float-comparer? a)
    (clr-is UnityEngine.Assertions.Comparers.FloatComparer a))
  (define-method-port
    get-hash-code
    UnityEngine.Assertions.Comparers.FloatComparer
    GetHashCode
    (System.Int32 System.Single))
  (define-method-port
    are-equal?
    UnityEngine.Assertions.Comparers.FloatComparer
    AreEqual
    (static: System.Boolean System.Single System.Single System.Single))
  (define-method-port
    are-equal-relative?
    UnityEngine.Assertions.Comparers.FloatComparer
    AreEqualRelative
    (static: System.Boolean System.Single System.Single System.Single))
  (define-method-port
    equals?
    UnityEngine.Assertions.Comparers.FloatComparer
    Equals
    (System.Boolean System.Single System.Single))
  (define-field-port
    k-epsilon
    #f
    #f
    (static:)
    UnityEngine.Assertions.Comparers.FloatComparer
    kEpsilon
    System.Single)
  (define-field-port
    s-comparer-with-default-tolerance
    #f
    #f
    (static:)
    UnityEngine.Assertions.Comparers.FloatComparer
    s_ComparerWithDefaultTolerance
    UnityEngine.Assertions.Comparers.FloatComparer))
