(library (system runtime remoting contexts dynamic-property-collection)
  (export new
          is?
          dynamic-property-collection?
          register-dynamic-property?
          unregister-dynamic-property?
          notify-message
          has-properties?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Remoting.Contexts.DynamicPropertyCollection
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Runtime.Remoting.Contexts.DynamicPropertyCollection
      a))
  (define (dynamic-property-collection? a)
    (clr-is
      System.Runtime.Remoting.Contexts.DynamicPropertyCollection
      a))
  (define-method-port
    register-dynamic-property?
    System.Runtime.Remoting.Contexts.DynamicPropertyCollection
    RegisterDynamicProperty
    (System.Boolean System.Runtime.Remoting.Contexts.IDynamicProperty))
  (define-method-port
    unregister-dynamic-property?
    System.Runtime.Remoting.Contexts.DynamicPropertyCollection
    UnregisterDynamicProperty
    (System.Boolean System.String))
  (define-method-port
    notify-message
    System.Runtime.Remoting.Contexts.DynamicPropertyCollection
    NotifyMessage
    (System.Void
      System.Boolean
      System.Runtime.Remoting.Messaging.IMessage
      System.Boolean
      System.Boolean))
  (define-field-port
    has-properties?
    #f
    #f
    (property:)
    System.Runtime.Remoting.Contexts.DynamicPropertyCollection
    HasProperties
    System.Boolean))
