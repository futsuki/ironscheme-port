(library (system runtime remoting messaging call-context)
  (export is?
          call-context?
          set-data
          get-headers
          get-data
          set-headers
          free-named-data-slot
          logical-set-data
          logical-get-data
          host-context-get
          host-context-set!
          host-context-update!)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Runtime.Remoting.Messaging.CallContext a))
  (define (call-context? a)
    (clr-is System.Runtime.Remoting.Messaging.CallContext a))
  (define-method-port
    set-data
    System.Runtime.Remoting.Messaging.CallContext
    SetData
    (static: System.Void System.String System.Object))
  (define-method-port
    get-headers
    System.Runtime.Remoting.Messaging.CallContext
    GetHeaders
    (static: System.Runtime.Remoting.Messaging.Header[]))
  (define-method-port
    get-data
    System.Runtime.Remoting.Messaging.CallContext
    GetData
    (static: System.Object System.String))
  (define-method-port
    set-headers
    System.Runtime.Remoting.Messaging.CallContext
    SetHeaders
    (static: System.Void System.Runtime.Remoting.Messaging.Header[]))
  (define-method-port
    free-named-data-slot
    System.Runtime.Remoting.Messaging.CallContext
    FreeNamedDataSlot
    (static: System.Void System.String))
  (define-method-port
    logical-set-data
    System.Runtime.Remoting.Messaging.CallContext
    LogicalSetData
    (static: System.Void System.String System.Object))
  (define-method-port
    logical-get-data
    System.Runtime.Remoting.Messaging.CallContext
    LogicalGetData
    (static: System.Object System.String))
  (define-field-port
    host-context-get
    host-context-set!
    host-context-update!
    (static: property:)
    System.Runtime.Remoting.Messaging.CallContext
    HostContext
    System.Object))
