(library (system object-disposed-exception)
  (export new
          is?
          object-disposed-exception?
          get-object-data
          message
          object-name)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.ObjectDisposedException a ...)))))
  (define (is? a) (clr-is System.ObjectDisposedException a))
  (define (object-disposed-exception? a)
    (clr-is System.ObjectDisposedException a))
  (define-method-port
    get-object-data
    System.ObjectDisposedException
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-field-port
    message
    #f
    #f
    (property:)
    System.ObjectDisposedException
    Message
    System.String)
  (define-field-port
    object-name
    #f
    #f
    (property:)
    System.ObjectDisposedException
    ObjectName
    System.String))
