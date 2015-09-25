(library (unity-engine assertions assert)
  (export is?
          assert?
          are-equal
          are-not-equal
          is-not-null
          is-true
          are-not-approximately-equal
          is-null
          are-approximately-equal
          is-false
          raise-exceptions?-get
          raise-exceptions?-set!
          raise-exceptions?-update!)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is UnityEngine.Assertions.Assert a))
  (define (assert? a) (clr-is UnityEngine.Assertions.Assert a))
  (define-method-port are-equal UnityEngine.Assertions.Assert AreEqual)
  (define-method-port
    are-not-equal
    UnityEngine.Assertions.Assert
    AreNotEqual)
  (define-method-port
    is-not-null
    UnityEngine.Assertions.Assert
    IsNotNull)
  (define-method-port
    is-true
    UnityEngine.Assertions.Assert
    IsTrue
    (static: System.Void System.Boolean System.String)
    (static: System.Void System.Boolean))
  (define-method-port
    are-not-approximately-equal
    UnityEngine.Assertions.Assert
    AreNotApproximatelyEqual
    (static:
      System.Void
      System.Single
      System.Single
      System.Single
      System.String)
    (static: System.Void System.Single System.Single System.Single)
    (static: System.Void System.Single System.Single System.String)
    (static: System.Void System.Single System.Single))
  (define-method-port is-null UnityEngine.Assertions.Assert IsNull)
  (define-method-port
    are-approximately-equal
    UnityEngine.Assertions.Assert
    AreApproximatelyEqual
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
    is-false
    UnityEngine.Assertions.Assert
    IsFalse
    (static: System.Void System.Boolean System.String)
    (static: System.Void System.Boolean))
  (define-field-port
    raise-exceptions?-get
    raise-exceptions?-set!
    raise-exceptions?-update!
    (static:)
    UnityEngine.Assertions.Assert
    raiseExceptions
    System.Boolean))
