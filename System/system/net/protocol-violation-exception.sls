(library (system net protocol-violation-exception)
  (export new is? protocol-violation-exception? get-object-data)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Net.ProtocolViolationException a ...)))))
  (define (is? a) (clr-is System.Net.ProtocolViolationException a))
  (define (protocol-violation-exception? a)
    (clr-is System.Net.ProtocolViolationException a))
  (define-method-port
    get-object-data
    System.Net.ProtocolViolationException
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext)))
