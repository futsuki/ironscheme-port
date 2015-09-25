(library (system
          runtime
          remoting
          activation
          remote-activation-attribute)
  (export new
          is?
          remote-activation-attribute?
          is-context-ok?
          get-properties-for-new-context)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Remoting.Activation.RemoteActivationAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Runtime.Remoting.Activation.RemoteActivationAttribute
      a))
  (define (remote-activation-attribute? a)
    (clr-is
      System.Runtime.Remoting.Activation.RemoteActivationAttribute
      a))
  (define-method-port
    is-context-ok?
    System.Runtime.Remoting.Activation.RemoteActivationAttribute
    IsContextOK
    (System.Boolean
      System.Runtime.Remoting.Contexts.Context
      System.Runtime.Remoting.Activation.IConstructionCallMessage))
  (define-method-port
    get-properties-for-new-context
    System.Runtime.Remoting.Activation.RemoteActivationAttribute
    GetPropertiesForNewContext
    (System.Void
      System.Runtime.Remoting.Activation.IConstructionCallMessage)))
