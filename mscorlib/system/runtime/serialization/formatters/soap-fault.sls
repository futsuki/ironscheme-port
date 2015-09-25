(library (system runtime serialization formatters soap-fault)
  (export new
          is?
          soap-fault?
          get-object-data
          detail-get
          detail-set!
          detail-update!
          fault-actor-get
          fault-actor-set!
          fault-actor-update!
          fault-code-get
          fault-code-set!
          fault-code-update!
          fault-string-get
          fault-string-set!
          fault-string-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Serialization.Formatters.SoapFault
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Serialization.Formatters.SoapFault a))
  (define (soap-fault? a)
    (clr-is System.Runtime.Serialization.Formatters.SoapFault a))
  (define-method-port
    get-object-data
    System.Runtime.Serialization.Formatters.SoapFault
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-field-port
    detail-get
    detail-set!
    detail-update!
    (property:)
    System.Runtime.Serialization.Formatters.SoapFault
    Detail
    System.Object)
  (define-field-port
    fault-actor-get
    fault-actor-set!
    fault-actor-update!
    (property:)
    System.Runtime.Serialization.Formatters.SoapFault
    FaultActor
    System.String)
  (define-field-port
    fault-code-get
    fault-code-set!
    fault-code-update!
    (property:)
    System.Runtime.Serialization.Formatters.SoapFault
    FaultCode
    System.String)
  (define-field-port
    fault-string-get
    fault-string-set!
    fault-string-update!
    (property:)
    System.Runtime.Serialization.Formatters.SoapFault
    FaultString
    System.String))
