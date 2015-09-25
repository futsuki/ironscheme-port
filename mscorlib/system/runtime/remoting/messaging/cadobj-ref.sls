(library (system runtime remoting messaging cadobj-ref)
  (export new
          is?
          cadobj-ref?
          source-domain-get
          source-domain-set!
          source-domain-update!
          type-name
          uri)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Remoting.Messaging.CADObjRef
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Remoting.Messaging.CADObjRef a))
  (define (cadobj-ref? a)
    (clr-is System.Runtime.Remoting.Messaging.CADObjRef a))
  (define-field-port
    source-domain-get
    source-domain-set!
    source-domain-update!
    ()
    System.Runtime.Remoting.Messaging.CADObjRef
    SourceDomain
    System.Int32)
  (define-field-port
    type-name
    #f
    #f
    (property:)
    System.Runtime.Remoting.Messaging.CADObjRef
    TypeName
    System.String)
  (define-field-port
    uri
    #f
    #f
    (property:)
    System.Runtime.Remoting.Messaging.CADObjRef
    URI
    System.String))
