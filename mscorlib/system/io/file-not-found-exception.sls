(library (system io file-not-found-exception)
  (export new
          is?
          file-not-found-exception?
          get-object-data
          to-string
          file-name
          fusion-log
          message)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.IO.FileNotFoundException a ...)))))
  (define (is? a) (clr-is System.IO.FileNotFoundException a))
  (define (file-not-found-exception? a)
    (clr-is System.IO.FileNotFoundException a))
  (define-method-port
    get-object-data
    System.IO.FileNotFoundException
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-method-port
    to-string
    System.IO.FileNotFoundException
    ToString
    (System.String))
  (define-field-port
    file-name
    #f
    #f
    (property:)
    System.IO.FileNotFoundException
    FileName
    System.String)
  (define-field-port
    fusion-log
    #f
    #f
    (property:)
    System.IO.FileNotFoundException
    FusionLog
    System.String)
  (define-field-port
    message
    #f
    #f
    (property:)
    System.IO.FileNotFoundException
    Message
    System.String))
