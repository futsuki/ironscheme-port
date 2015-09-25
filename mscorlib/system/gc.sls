(library (system gc)
  (export is?
          gc?
          collection-count
          keep-alive
          remove-memory-pressure
          get-generation
          re-register-for-finalize
          wait-for-pending-finalizers
          suppress-finalize
          add-memory-pressure
          get-total-memory
          collect
          max-generation)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.GC a))
  (define (gc? a) (clr-is System.GC a))
  (define-method-port
    collection-count
    System.GC
    CollectionCount
    (static: System.Int32 System.Int32))
  (define-method-port
    keep-alive
    System.GC
    KeepAlive
    (static: System.Void System.Object))
  (define-method-port
    remove-memory-pressure
    System.GC
    RemoveMemoryPressure
    (static: System.Void System.Int64))
  (define-method-port
    get-generation
    System.GC
    GetGeneration
    (static: System.Int32 System.WeakReference)
    (static: System.Int32 System.Object))
  (define-method-port
    re-register-for-finalize
    System.GC
    ReRegisterForFinalize
    (static: System.Void System.Object))
  (define-method-port
    wait-for-pending-finalizers
    System.GC
    WaitForPendingFinalizers
    (static: System.Void))
  (define-method-port
    suppress-finalize
    System.GC
    SuppressFinalize
    (static: System.Void System.Object))
  (define-method-port
    add-memory-pressure
    System.GC
    AddMemoryPressure
    (static: System.Void System.Int64))
  (define-method-port
    get-total-memory
    System.GC
    GetTotalMemory
    (static: System.Int64 System.Boolean))
  (define-method-port
    collect
    System.GC
    Collect
    (static: System.Void System.Int32 System.GCCollectionMode)
    (static: System.Void System.Int32)
    (static: System.Void))
  (define-field-port
    max-generation
    #f
    #f
    (static: property:)
    System.GC
    MaxGeneration
    System.Int32))
