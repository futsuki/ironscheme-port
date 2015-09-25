(library (unity-engine assertions must must-extensions)
  (export is?
          must-extensions?
          must-be-approximately-equal
          must-be-equal
          must-not-be-equal
          must-be-true
          must-not-be-approximately-equal
          must-be-null
          must-be-false
          must-not-be-null)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is UnityEngine.Assertions.Must.MustExtensions a))
  (define (must-extensions? a)
    (clr-is UnityEngine.Assertions.Must.MustExtensions a))
  (define-method-port
    must-be-approximately-equal
    UnityEngine.Assertions.Must.MustExtensions
    MustBeApproximatelyEqual
    (static:
      System.Void
      System.Single
      System.Single
      System.Single
      System.String)
    (static: System.Void System.Single System.Single System.Single)
    (static: System.Void System.Single System.Single System.String)
    (static: System.Void System.Single System.Single))
  (define-method-port
    must-be-equal
    UnityEngine.Assertions.Must.MustExtensions
    MustBeEqual)
  (define-method-port
    must-not-be-equal
    UnityEngine.Assertions.Must.MustExtensions
    MustNotBeEqual)
  (define-method-port
    must-be-true
    UnityEngine.Assertions.Must.MustExtensions
    MustBeTrue
    (static: System.Void System.Boolean System.String)
    (static: System.Void System.Boolean))
  (define-method-port
    must-not-be-approximately-equal
    UnityEngine.Assertions.Must.MustExtensions
    MustNotBeApproximatelyEqual
    (static:
      System.Void
      System.Single
      System.Single
      System.Single
      System.String)
    (static: System.Void System.Single System.Single System.Single)
    (static: System.Void System.Single System.Single System.String)
    (static: System.Void System.Single System.Single))
  (define-method-port
    must-be-null
    UnityEngine.Assertions.Must.MustExtensions
    MustBeNull)
  (define-method-port
    must-be-false
    UnityEngine.Assertions.Must.MustExtensions
    MustBeFalse
    (static: System.Void System.Boolean System.String)
    (static: System.Void System.Boolean))
  (define-method-port
    must-not-be-null
    UnityEngine.Assertions.Must.MustExtensions
    MustNotBeNull))
