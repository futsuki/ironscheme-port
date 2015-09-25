(library (system runtime remoting activation remote-activator)
  (export new
          is?
          remote-activator?
          initialize-lifetime-service
          activate
          level
          next-activator-get
          next-activator-set!
          next-activator-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Remoting.Activation.RemoteActivator
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Remoting.Activation.RemoteActivator a))
  (define (remote-activator? a)
    (clr-is System.Runtime.Remoting.Activation.RemoteActivator a))
  (define-method-port
    initialize-lifetime-service
    System.Runtime.Remoting.Activation.RemoteActivator
    InitializeLifetimeService
    (System.Object))
  (define-method-port
    activate
    System.Runtime.Remoting.Activation.RemoteActivator
    Activate
    (System.Runtime.Remoting.Activation.IConstructionReturnMessage
      System.Runtime.Remoting.Activation.IConstructionCallMessage))
  (define-field-port
    level
    #f
    #f
    (property:)
    System.Runtime.Remoting.Activation.RemoteActivator
    Level
    System.Runtime.Remoting.Activation.ActivatorLevel)
  (define-field-port
    next-activator-get
    next-activator-set!
    next-activator-update!
    (property:)
    System.Runtime.Remoting.Activation.RemoteActivator
    NextActivator
    System.Runtime.Remoting.Activation.IActivator))
