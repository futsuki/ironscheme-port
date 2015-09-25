(library (system type-load-exception)
  (export new
          is?
          type-load-exception?
          get-object-data
          message
          type-name)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.TypeLoadException a ...)))))
  (define (is? a) (clr-is System.TypeLoadException a))
  (define (type-load-exception? a) (clr-is System.TypeLoadException a))
  (define-method-port
    get-object-data
    System.TypeLoadException
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-field-port
    message
    #f
    #f
    (property:)
    System.TypeLoadException
    Message
    System.String)
  (define-field-port
    type-name
    #f
    #f
    (property:)
    System.TypeLoadException
    TypeName
    System.String))
