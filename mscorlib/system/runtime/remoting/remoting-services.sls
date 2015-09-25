(library (system runtime remoting remoting-services)
  (export is?
          remoting-services?
          execute-message
          is-one-way?
          connect
          get-real-proxy
          is-object-out-of-context?
          get-server-type-for-uri
          is-method-overloaded?
          set-object-uri-for-marshal
          get-object-data
          unmarshal
          get-method-base-from-method-message
          get-obj-ref-for-proxy
          get-session-id-for-method-message
          is-transparent-proxy?
          get-envoy-chain-for-proxy
          get-lifetime-service
          log-remoting-stage
          marshal
          disconnect?
          get-object-uri
          is-object-out-of-app-domain?)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Runtime.Remoting.RemotingServices a))
  (define (remoting-services? a)
    (clr-is System.Runtime.Remoting.RemotingServices a))
  (define-method-port
    execute-message
    System.Runtime.Remoting.RemotingServices
    ExecuteMessage
    (static:
      System.Runtime.Remoting.Messaging.IMethodReturnMessage
      System.MarshalByRefObject
      System.Runtime.Remoting.Messaging.IMethodCallMessage))
  (define-method-port
    is-one-way?
    System.Runtime.Remoting.RemotingServices
    IsOneWay
    (static: System.Boolean System.Reflection.MethodBase))
  (define-method-port
    connect
    System.Runtime.Remoting.RemotingServices
    Connect
    (static: System.Object System.Type System.String System.Object)
    (static: System.Object System.Type System.String))
  (define-method-port
    get-real-proxy
    System.Runtime.Remoting.RemotingServices
    GetRealProxy
    (static: System.Runtime.Remoting.Proxies.RealProxy System.Object))
  (define-method-port
    is-object-out-of-context?
    System.Runtime.Remoting.RemotingServices
    IsObjectOutOfContext
    (static: System.Boolean System.Object))
  (define-method-port
    get-server-type-for-uri
    System.Runtime.Remoting.RemotingServices
    GetServerTypeForUri
    (static: System.Type System.String))
  (define-method-port
    is-method-overloaded?
    System.Runtime.Remoting.RemotingServices
    IsMethodOverloaded
    (static:
      System.Boolean
      System.Runtime.Remoting.Messaging.IMethodMessage))
  (define-method-port
    set-object-uri-for-marshal
    System.Runtime.Remoting.RemotingServices
    SetObjectUriForMarshal
    (static: System.Void System.MarshalByRefObject System.String))
  (define-method-port
    get-object-data
    System.Runtime.Remoting.RemotingServices
    GetObjectData
    (static:
      System.Void
      System.Object
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-method-port
    unmarshal
    System.Runtime.Remoting.RemotingServices
    Unmarshal
    (static:
      System.Object
      System.Runtime.Remoting.ObjRef
      System.Boolean)
    (static: System.Object System.Runtime.Remoting.ObjRef))
  (define-method-port
    get-method-base-from-method-message
    System.Runtime.Remoting.RemotingServices
    GetMethodBaseFromMethodMessage
    (static:
      System.Reflection.MethodBase
      System.Runtime.Remoting.Messaging.IMethodMessage))
  (define-method-port
    get-obj-ref-for-proxy
    System.Runtime.Remoting.RemotingServices
    GetObjRefForProxy
    (static: System.Runtime.Remoting.ObjRef System.MarshalByRefObject))
  (define-method-port
    get-session-id-for-method-message
    System.Runtime.Remoting.RemotingServices
    GetSessionIdForMethodMessage
    (static:
      System.String
      System.Runtime.Remoting.Messaging.IMethodMessage))
  (define-method-port
    is-transparent-proxy?
    System.Runtime.Remoting.RemotingServices
    IsTransparentProxy
    (static: System.Boolean System.Object))
  (define-method-port
    get-envoy-chain-for-proxy
    System.Runtime.Remoting.RemotingServices
    GetEnvoyChainForProxy
    (static:
      System.Runtime.Remoting.Messaging.IMessageSink
      System.MarshalByRefObject))
  (define-method-port
    get-lifetime-service
    System.Runtime.Remoting.RemotingServices
    GetLifetimeService
    (static: System.Object System.MarshalByRefObject))
  (define-method-port
    log-remoting-stage
    System.Runtime.Remoting.RemotingServices
    LogRemotingStage
    (static: System.Void System.Int32))
  (define-method-port
    marshal
    System.Runtime.Remoting.RemotingServices
    Marshal
    (static:
      System.Runtime.Remoting.ObjRef
      System.MarshalByRefObject
      System.String
      System.Type)
    (static:
      System.Runtime.Remoting.ObjRef
      System.MarshalByRefObject
      System.String)
    (static: System.Runtime.Remoting.ObjRef System.MarshalByRefObject))
  (define-method-port
    disconnect?
    System.Runtime.Remoting.RemotingServices
    Disconnect
    (static: System.Boolean System.MarshalByRefObject))
  (define-method-port
    get-object-uri
    System.Runtime.Remoting.RemotingServices
    GetObjectUri
    (static: System.String System.MarshalByRefObject))
  (define-method-port
    is-object-out-of-app-domain?
    System.Runtime.Remoting.RemotingServices
    IsObjectOutOfAppDomain
    (static: System.Boolean System.Object)))
