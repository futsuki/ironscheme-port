(library (system
          runtime
          remoting
          activation
          construction-level-activator)
  (export new
          is?
          construction-level-activator?
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
             System.Runtime.Remoting.Activation.ConstructionLevelActivator
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Runtime.Remoting.Activation.ConstructionLevelActivator
      a))
  (define (construction-level-activator? a)
    (clr-is
      System.Runtime.Remoting.Activation.ConstructionLevelActivator
      a))
  (define-method-port
    activate
    System.Runtime.Remoting.Activation.ConstructionLevelActivator
    Activate
    (System.Runtime.Remoting.Activation.IConstructionReturnMessage
      System.Runtime.Remoting.Activation.IConstructionCallMessage))
  (define-field-port
    level
    #f
    #f
    (property:)
    System.Runtime.Remoting.Activation.ConstructionLevelActivator
    Level
    System.Runtime.Remoting.Activation.ActivatorLevel)
  (define-field-port
    next-activator-get
    next-activator-set!
    next-activator-update!
    (property:)
    System.Runtime.Remoting.Activation.ConstructionLevelActivator
    NextActivator
    System.Runtime.Remoting.Activation.IActivator))
