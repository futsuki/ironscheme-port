(library (system runtime remoting messaging logical-call-context)
  (export is?
          logical-call-context?
          set-data
          get-data
          get-object-data
          free-named-data-slot
          clone
          has-info?)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Runtime.Remoting.Messaging.LogicalCallContext a))
  (define (logical-call-context? a)
    (clr-is System.Runtime.Remoting.Messaging.LogicalCallContext a))
  (define-method-port
    set-data
    System.Runtime.Remoting.Messaging.LogicalCallContext
    SetData
    (System.Void System.String System.Object))
  (define-method-port
    get-data
    System.Runtime.Remoting.Messaging.LogicalCallContext
    GetData
    (System.Object System.String))
  (define-method-port
    get-object-data
    System.Runtime.Remoting.Messaging.LogicalCallContext
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-method-port
    free-named-data-slot
    System.Runtime.Remoting.Messaging.LogicalCallContext
    FreeNamedDataSlot
    (System.Void System.String))
  (define-method-port
    clone
    System.Runtime.Remoting.Messaging.LogicalCallContext
    Clone
    (System.Object))
  (define-field-port
    has-info?
    #f
    #f
    (property:)
    System.Runtime.Remoting.Messaging.LogicalCallContext
    HasInfo
    System.Boolean))
