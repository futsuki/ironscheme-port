(library (mono interop com-interop-proxy)
  (export is?
          com-interop-proxy?
          can-cast-to?
          invoke
          type-name-get
          type-name-set!
          type-name-update!)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is Mono.Interop.ComInteropProxy a))
  (define (com-interop-proxy? a)
    (clr-is Mono.Interop.ComInteropProxy a))
  (define-method-port
    can-cast-to?
    Mono.Interop.ComInteropProxy
    CanCastTo
    (System.Boolean System.Type System.Object))
  (define-method-port
    invoke
    Mono.Interop.ComInteropProxy
    Invoke
    (System.Runtime.Remoting.Messaging.IMessage
      System.Runtime.Remoting.Messaging.IMessage))
  (define-field-port
    type-name-get
    type-name-set!
    type-name-update!
    (property:)
    Mono.Interop.ComInteropProxy
    TypeName
    System.String))
