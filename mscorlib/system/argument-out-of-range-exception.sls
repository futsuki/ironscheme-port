(library (system argument-out-of-range-exception)
  (export new
          is?
          argument-out-of-range-exception?
          get-object-data
          actual-value
          message)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.ArgumentOutOfRangeException a ...)))))
  (define (is? a) (clr-is System.ArgumentOutOfRangeException a))
  (define (argument-out-of-range-exception? a)
    (clr-is System.ArgumentOutOfRangeException a))
  (define-method-port
    get-object-data
    System.ArgumentOutOfRangeException
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-field-port
    actual-value
    #f
    #f
    (property:)
    System.ArgumentOutOfRangeException
    ActualValue
    System.Object)
  (define-field-port
    message
    #f
    #f
    (property:)
    System.ArgumentOutOfRangeException
    Message
    System.String))
