(library (system runtime remoting activation activation-services)
  (export new
          is?
          activation-services?
          remote-activate
          create-instance-from-message
          allocate-uninitialized-class-instance
          create-proxy-from-attributes
          enable-proxy-activation
          create-proxy-for-type
          activate
          create-construction-call)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Remoting.Activation.ActivationServices
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Remoting.Activation.ActivationServices a))
  (define (activation-services? a)
    (clr-is System.Runtime.Remoting.Activation.ActivationServices a))
  (define-method-port
    remote-activate
    System.Runtime.Remoting.Activation.ActivationServices
    RemoteActivate
    (static:
      System.Runtime.Remoting.Messaging.IMessage
      System.Runtime.Remoting.Activation.IConstructionCallMessage))
  (define-method-port
    create-instance-from-message
    System.Runtime.Remoting.Activation.ActivationServices
    CreateInstanceFromMessage
    (static:
      System.Runtime.Remoting.Messaging.IMessage
      System.Runtime.Remoting.Activation.IConstructionCallMessage))
  (define-method-port
    allocate-uninitialized-class-instance
    System.Runtime.Remoting.Activation.ActivationServices
    AllocateUninitializedClassInstance
    (static: System.Object System.Type))
  (define-method-port
    create-proxy-from-attributes
    System.Runtime.Remoting.Activation.ActivationServices
    CreateProxyFromAttributes
    (static: System.Object System.Type System.Object[]))
  (define-method-port
    enable-proxy-activation
    System.Runtime.Remoting.Activation.ActivationServices
    EnableProxyActivation
    (static: System.Void System.Type System.Boolean))
  (define-method-port
    create-proxy-for-type
    System.Runtime.Remoting.Activation.ActivationServices
    CreateProxyForType
    (static: System.Object System.Type))
  (define-method-port
    activate
    System.Runtime.Remoting.Activation.ActivationServices
    Activate
    (static:
      System.Runtime.Remoting.Messaging.IMessage
      System.Runtime.Remoting.Proxies.RemotingProxy
      System.Runtime.Remoting.Messaging.ConstructionCall))
  (define-method-port
    create-construction-call
    System.Runtime.Remoting.Activation.ActivationServices
    CreateConstructionCall
    (static:
      System.Runtime.Remoting.Messaging.ConstructionCall
      System.Type
      System.String
      System.Object[])))
