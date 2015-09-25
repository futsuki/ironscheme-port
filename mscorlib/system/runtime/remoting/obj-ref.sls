(library (system runtime remoting obj-ref)
  (export new
          is?
          obj-ref?
          get-object-data
          is-from-this-process?
          is-from-this-app-domain?
          get-real-object
          channel-info-get
          channel-info-set!
          channel-info-update!
          envoy-info-get
          envoy-info-set!
          envoy-info-update!
          type-info-get
          type-info-set!
          type-info-update!
          uri-get
          uri-set!
          uri-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Runtime.Remoting.ObjRef a ...)))))
  (define (is? a) (clr-is System.Runtime.Remoting.ObjRef a))
  (define (obj-ref? a) (clr-is System.Runtime.Remoting.ObjRef a))
  (define-method-port
    get-object-data
    System.Runtime.Remoting.ObjRef
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-method-port
    is-from-this-process?
    System.Runtime.Remoting.ObjRef
    IsFromThisProcess
    (System.Boolean))
  (define-method-port
    is-from-this-app-domain?
    System.Runtime.Remoting.ObjRef
    IsFromThisAppDomain
    (System.Boolean))
  (define-method-port
    get-real-object
    System.Runtime.Remoting.ObjRef
    GetRealObject
    (System.Object System.Runtime.Serialization.StreamingContext))
  (define-field-port
    channel-info-get
    channel-info-set!
    channel-info-update!
    (property:)
    System.Runtime.Remoting.ObjRef
    ChannelInfo
    System.Runtime.Remoting.IChannelInfo)
  (define-field-port
    envoy-info-get
    envoy-info-set!
    envoy-info-update!
    (property:)
    System.Runtime.Remoting.ObjRef
    EnvoyInfo
    System.Runtime.Remoting.IEnvoyInfo)
  (define-field-port
    type-info-get
    type-info-set!
    type-info-update!
    (property:)
    System.Runtime.Remoting.ObjRef
    TypeInfo
    System.Runtime.Remoting.IRemotingTypeInfo)
  (define-field-port
    uri-get
    uri-set!
    uri-update!
    (property:)
    System.Runtime.Remoting.ObjRef
    URI
    System.String))
