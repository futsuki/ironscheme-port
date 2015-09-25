(library (system io file-load-exception)
  (export new
          is?
          file-load-exception?
          get-object-data
          to-string
          message
          file-name
          fusion-log)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.IO.FileLoadException a ...)))))
  (define (is? a) (clr-is System.IO.FileLoadException a))
  (define (file-load-exception? a)
    (clr-is System.IO.FileLoadException a))
  (define-method-port
    get-object-data
    System.IO.FileLoadException
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-method-port
    to-string
    System.IO.FileLoadException
    ToString
    (System.String))
  (define-field-port
    message
    #f
    #f
    (property:)
    System.IO.FileLoadException
    Message
    System.String)
  (define-field-port
    file-name
    #f
    #f
    (property:)
    System.IO.FileLoadException
    FileName
    System.String)
  (define-field-port
    fusion-log
    #f
    #f
    (property:)
    System.IO.FileLoadException
    FusionLog
    System.String))
