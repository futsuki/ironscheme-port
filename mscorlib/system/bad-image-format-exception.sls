(library (system bad-image-format-exception)
  (export new
          is?
          bad-image-format-exception?
          get-object-data
          to-string
          message
          file-name
          fusion-log)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.BadImageFormatException a ...)))))
  (define (is? a) (clr-is System.BadImageFormatException a))
  (define (bad-image-format-exception? a)
    (clr-is System.BadImageFormatException a))
  (define-method-port
    get-object-data
    System.BadImageFormatException
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-method-port
    to-string
    System.BadImageFormatException
    ToString
    (System.String))
  (define-field-port
    message
    #f
    #f
    (property:)
    System.BadImageFormatException
    Message
    System.String)
  (define-field-port
    file-name
    #f
    #f
    (property:)
    System.BadImageFormatException
    FileName
    System.String)
  (define-field-port
    fusion-log
    #f
    #f
    (property:)
    System.BadImageFormatException
    FusionLog
    System.String))
