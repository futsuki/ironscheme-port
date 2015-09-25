(library (system runtime remoting proxies proxy-attribute)
  (export new
          is?
          proxy-attribute?
          is-context-ok?
          get-properties-for-new-context
          create-proxy
          create-instance)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Remoting.Proxies.ProxyAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Remoting.Proxies.ProxyAttribute a))
  (define (proxy-attribute? a)
    (clr-is System.Runtime.Remoting.Proxies.ProxyAttribute a))
  (define-method-port
    is-context-ok?
    System.Runtime.Remoting.Proxies.ProxyAttribute
    IsContextOK
    (System.Boolean
      System.Runtime.Remoting.Contexts.Context
      System.Runtime.Remoting.Activation.IConstructionCallMessage))
  (define-method-port
    get-properties-for-new-context
    System.Runtime.Remoting.Proxies.ProxyAttribute
    GetPropertiesForNewContext
    (System.Void
      System.Runtime.Remoting.Activation.IConstructionCallMessage))
  (define-method-port
    create-proxy
    System.Runtime.Remoting.Proxies.ProxyAttribute
    CreateProxy
    (System.Runtime.Remoting.Proxies.RealProxy
      System.Runtime.Remoting.ObjRef
      System.Type
      System.Object
      System.Runtime.Remoting.Contexts.Context))
  (define-method-port
    create-instance
    System.Runtime.Remoting.Proxies.ProxyAttribute
    CreateInstance
    (System.MarshalByRefObject System.Type)))
