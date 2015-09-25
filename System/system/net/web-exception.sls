(library (system net web-exception)
  (export new is? web-exception? get-object-data response status)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Net.WebException a ...)))))
  (define (is? a) (clr-is System.Net.WebException a))
  (define (web-exception? a) (clr-is System.Net.WebException a))
  (define-method-port
    get-object-data
    System.Net.WebException
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-field-port
    response
    #f
    #f
    (property:)
    System.Net.WebException
    Response
    System.Net.WebResponse)
  (define-field-port
    status
    #f
    #f
    (property:)
    System.Net.WebException
    Status
    System.Net.WebExceptionStatus))
