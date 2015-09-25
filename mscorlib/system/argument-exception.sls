(library (system argument-exception)
  (export new
          is?
          argument-exception?
          get-object-data
          param-name
          message)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.ArgumentException a ...)))))
  (define (is? a) (clr-is System.ArgumentException a))
  (define (argument-exception? a) (clr-is System.ArgumentException a))
  (define-method-port
    get-object-data
    System.ArgumentException
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-field-port
    param-name
    #f
    #f
    (property:)
    System.ArgumentException
    ParamName
    System.String)
  (define-field-port
    message
    #f
    #f
    (property:)
    System.ArgumentException
    Message
    System.String))
