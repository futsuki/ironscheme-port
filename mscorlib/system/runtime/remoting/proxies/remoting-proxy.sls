(library (system runtime remoting proxies remoting-proxy)
  (export is?
          remoting-proxy?
          can-cast-to?
          invoke
          type-name-get
          type-name-set!
          type-name-update!)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Runtime.Remoting.Proxies.RemotingProxy a))
  (define (remoting-proxy? a)
    (clr-is System.Runtime.Remoting.Proxies.RemotingProxy a))
  (define-method-port
    can-cast-to?
    System.Runtime.Remoting.Proxies.RemotingProxy
    CanCastTo
    (System.Boolean System.Type System.Object))
  (define-method-port
    invoke
    System.Runtime.Remoting.Proxies.RemotingProxy
    Invoke
    (System.Runtime.Remoting.Messaging.IMessage
      System.Runtime.Remoting.Messaging.IMessage))
  (define-field-port
    type-name-get
    type-name-set!
    type-name-update!
    (property:)
    System.Runtime.Remoting.Proxies.RemotingProxy
    TypeName
    System.String))
