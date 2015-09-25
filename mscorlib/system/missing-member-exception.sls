(library (system missing-member-exception)
  (export new is? missing-member-exception? get-object-data message)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.MissingMemberException a ...)))))
  (define (is? a) (clr-is System.MissingMemberException a))
  (define (missing-member-exception? a)
    (clr-is System.MissingMemberException a))
  (define-method-port
    get-object-data
    System.MissingMemberException
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-field-port
    message
    #f
    #f
    (property:)
    System.MissingMemberException
    Message
    System.String))
