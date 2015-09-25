(library (unity-engine internal default-value-attribute)
  (export new is? default-value-attribute? get-hash-code equals? value)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             UnityEngine.Internal.DefaultValueAttribute
             a
             ...)))))
  (define (is? a) (clr-is UnityEngine.Internal.DefaultValueAttribute a))
  (define (default-value-attribute? a)
    (clr-is UnityEngine.Internal.DefaultValueAttribute a))
  (define-method-port
    get-hash-code
    UnityEngine.Internal.DefaultValueAttribute
    GetHashCode
    (System.Int32))
  (define-method-port
    equals?
    UnityEngine.Internal.DefaultValueAttribute
    Equals
    (System.Boolean System.Object))
  (define-field-port
    value
    #f
    #f
    (property:)
    UnityEngine.Internal.DefaultValueAttribute
    Value
    System.Object))
