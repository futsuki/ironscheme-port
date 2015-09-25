(library (system runtime remoting messaging construction-response)
  (export new is? construction-response? properties)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Remoting.Messaging.ConstructionResponse
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Remoting.Messaging.ConstructionResponse a))
  (define (construction-response? a)
    (clr-is System.Runtime.Remoting.Messaging.ConstructionResponse a))
  (define-field-port
    properties
    #f
    #f
    (property:)
    System.Runtime.Remoting.Messaging.ConstructionResponse
    Properties
    System.Collections.IDictionary))
