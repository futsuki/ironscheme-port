(library (system runtime remoting activation app-domain-level-activator)
  (export new
          is?
          app-domain-level-activator?
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
             System.Runtime.Remoting.Activation.AppDomainLevelActivator
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Runtime.Remoting.Activation.AppDomainLevelActivator
      a))
  (define (app-domain-level-activator? a)
    (clr-is
      System.Runtime.Remoting.Activation.AppDomainLevelActivator
      a))
  (define-method-port
    activate
    System.Runtime.Remoting.Activation.AppDomainLevelActivator
    Activate
    (System.Runtime.Remoting.Activation.IConstructionReturnMessage
      System.Runtime.Remoting.Activation.IConstructionCallMessage))
  (define-field-port
    level
    #f
    #f
    (property:)
    System.Runtime.Remoting.Activation.AppDomainLevelActivator
    Level
    System.Runtime.Remoting.Activation.ActivatorLevel)
  (define-field-port
    next-activator-get
    next-activator-set!
    next-activator-update!
    (property:)
    System.Runtime.Remoting.Activation.AppDomainLevelActivator
    NextActivator
    System.Runtime.Remoting.Activation.IActivator))
