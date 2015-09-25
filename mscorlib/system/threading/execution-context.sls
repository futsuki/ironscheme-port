(library (system threading execution-context)
  (export is?
          execution-context?
          capture
          get-object-data
          restore-flow
          suppress-flow
          is-flow-suppressed?
          run
          create-copy)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Threading.ExecutionContext a))
  (define (execution-context? a)
    (clr-is System.Threading.ExecutionContext a))
  (define-method-port
    capture
    System.Threading.ExecutionContext
    Capture
    (static: System.Threading.ExecutionContext))
  (define-method-port
    get-object-data
    System.Threading.ExecutionContext
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-method-port
    restore-flow
    System.Threading.ExecutionContext
    RestoreFlow
    (static: System.Void))
  (define-method-port
    suppress-flow
    System.Threading.ExecutionContext
    SuppressFlow
    (static: System.Threading.AsyncFlowControl))
  (define-method-port
    is-flow-suppressed?
    System.Threading.ExecutionContext
    IsFlowSuppressed
    (static: System.Boolean))
  (define-method-port
    run
    System.Threading.ExecutionContext
    Run
    (static:
      System.Void
      System.Threading.ExecutionContext
      System.Threading.ContextCallback
      System.Object))
  (define-method-port
    create-copy
    System.Threading.ExecutionContext
    CreateCopy
    (System.Threading.ExecutionContext)))
