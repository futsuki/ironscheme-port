(library (system runtime remoting messaging construction-call)
  (export new
          is?
          construction-call?
          get-object-data
          activation-type
          activation-type-name
          activator-get
          activator-set!
          activator-update!
          call-site-activation-attributes
          context-properties
          properties)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Remoting.Messaging.ConstructionCall
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Remoting.Messaging.ConstructionCall a))
  (define (construction-call? a)
    (clr-is System.Runtime.Remoting.Messaging.ConstructionCall a))
  (define-method-port
    get-object-data
    System.Runtime.Remoting.Messaging.ConstructionCall
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-field-port
    activation-type
    #f
    #f
    (property:)
    System.Runtime.Remoting.Messaging.ConstructionCall
    ActivationType
    System.Type)
  (define-field-port
    activation-type-name
    #f
    #f
    (property:)
    System.Runtime.Remoting.Messaging.ConstructionCall
    ActivationTypeName
    System.String)
  (define-field-port
    activator-get
    activator-set!
    activator-update!
    (property:)
    System.Runtime.Remoting.Messaging.ConstructionCall
    Activator
    System.Runtime.Remoting.Activation.IActivator)
  (define-field-port
    call-site-activation-attributes
    #f
    #f
    (property:)
    System.Runtime.Remoting.Messaging.ConstructionCall
    CallSiteActivationAttributes
    System.Object[])
  (define-field-port
    context-properties
    #f
    #f
    (property:)
    System.Runtime.Remoting.Messaging.ConstructionCall
    ContextProperties
    System.Collections.IList)
  (define-field-port
    properties
    #f
    #f
    (property:)
    System.Runtime.Remoting.Messaging.ConstructionCall
    Properties
    System.Collections.IDictionary))
