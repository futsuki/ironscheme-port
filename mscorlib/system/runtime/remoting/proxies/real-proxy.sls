(library (system runtime remoting proxies real-proxy)
  (export is?
          real-proxy?
          get-stub-data
          initialize-server-object
          invoke
          create-obj-ref
          supports-interface
          get-comiunknown
          get-object-data
          get-transparent-proxy
          set-comiunknown
          set-stub-data
          get-proxied-type)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Runtime.Remoting.Proxies.RealProxy a))
  (define (real-proxy? a)
    (clr-is System.Runtime.Remoting.Proxies.RealProxy a))
  (define-method-port
    get-stub-data
    System.Runtime.Remoting.Proxies.RealProxy
    GetStubData
    (static: System.Object System.Runtime.Remoting.Proxies.RealProxy))
  (define-method-port
    initialize-server-object
    System.Runtime.Remoting.Proxies.RealProxy
    InitializeServerObject
    (System.Runtime.Remoting.Activation.IConstructionReturnMessage
      System.Runtime.Remoting.Activation.IConstructionCallMessage))
  (define-method-port
    invoke
    System.Runtime.Remoting.Proxies.RealProxy
    Invoke
    (System.Runtime.Remoting.Messaging.IMessage
      System.Runtime.Remoting.Messaging.IMessage))
  (define-method-port
    create-obj-ref
    System.Runtime.Remoting.Proxies.RealProxy
    CreateObjRef
    (System.Runtime.Remoting.ObjRef System.Type))
  (define-method-port
    supports-interface
    System.Runtime.Remoting.Proxies.RealProxy
    SupportsInterface
    (System.IntPtr System.Guid&))
  (define-method-port
    get-comiunknown
    System.Runtime.Remoting.Proxies.RealProxy
    GetCOMIUnknown
    (System.IntPtr System.Boolean))
  (define-method-port
    get-object-data
    System.Runtime.Remoting.Proxies.RealProxy
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-method-port
    get-transparent-proxy
    System.Runtime.Remoting.Proxies.RealProxy
    GetTransparentProxy
    (System.Object))
  (define-method-port
    set-comiunknown
    System.Runtime.Remoting.Proxies.RealProxy
    SetCOMIUnknown
    (System.Void System.IntPtr))
  (define-method-port
    set-stub-data
    System.Runtime.Remoting.Proxies.RealProxy
    SetStubData
    (static:
      System.Void
      System.Runtime.Remoting.Proxies.RealProxy
      System.Object))
  (define-method-port
    get-proxied-type
    System.Runtime.Remoting.Proxies.RealProxy
    GetProxiedType
    (System.Type)))
