(library (system runtime remoting activation context-level-activator)
  (export new
          is?
          context-level-activator?
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
             System.Runtime.Remoting.Activation.ContextLevelActivator
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Remoting.Activation.ContextLevelActivator a))
  (define (context-level-activator? a)
    (clr-is System.Runtime.Remoting.Activation.ContextLevelActivator a))
  (define-method-port
    activate
    System.Runtime.Remoting.Activation.ContextLevelActivator
    Activate
    (System.Runtime.Remoting.Activation.IConstructionReturnMessage
      System.Runtime.Remoting.Activation.IConstructionCallMessage))
  (define-field-port
    level
    #f
    #f
    (property:)
    System.Runtime.Remoting.Activation.ContextLevelActivator
    Level
    System.Runtime.Remoting.Activation.ActivatorLevel)
  (define-field-port
    next-activator-get
    next-activator-set!
    next-activator-update!
    (property:)
    System.Runtime.Remoting.Activation.ContextLevelActivator
    NextActivator
    System.Runtime.Remoting.Activation.IActivator))
