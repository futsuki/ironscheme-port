(library (system collections comparer)
  (export new
          is?
          comparer?
          get-object-data
          compare
          default
          default-invariant)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Collections.Comparer a ...)))))
  (define (is? a) (clr-is System.Collections.Comparer a))
  (define (comparer? a) (clr-is System.Collections.Comparer a))
  (define-method-port
    get-object-data
    System.Collections.Comparer
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-method-port
    compare
    System.Collections.Comparer
    Compare
    (System.Int32 System.Object System.Object))
  (define-field-port
    default
    #f
    #f
    (static:)
    System.Collections.Comparer
    Default
    System.Collections.Comparer)
  (define-field-port
    default-invariant
    #f
    #f
    (static:)
    System.Collections.Comparer
    DefaultInvariant
    System.Collections.Comparer))
