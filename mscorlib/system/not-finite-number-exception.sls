(library (system not-finite-number-exception)
  (export new
          is?
          not-finite-number-exception?
          get-object-data
          offending-number)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.NotFiniteNumberException a ...)))))
  (define (is? a) (clr-is System.NotFiniteNumberException a))
  (define (not-finite-number-exception? a)
    (clr-is System.NotFiniteNumberException a))
  (define-method-port
    get-object-data
    System.NotFiniteNumberException
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-field-port
    offending-number
    #f
    #f
    (property:)
    System.NotFiniteNumberException
    OffendingNumber
    System.Double))
