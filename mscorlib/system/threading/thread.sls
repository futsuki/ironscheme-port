(library (system threading thread)
  (export new
          is?
          thread?
          begin-critical-region
          spin-wait
          sleep
          set-data
          get-data
          memory-barrier
          resume
          end-thread-affinity
          get-domain
          join
          try-set-apartment-state?
          get-compressed-stack
          get-apartment-state
          allocate-named-data-slot
          get-named-data-slot
          volatile-read
          reset-abort
          get-hash-code
          set-compressed-stack
          allocate-data-slot
          free-named-data-slot
          set-apartment-state
          begin-thread-affinity
          start
          end-critical-region
          abort
          volatile-write
          get-domain-id
          suspend
          interrupt
          current-context
          current-principal-get
          current-principal-set!
          current-principal-update!
          current-thread
          apartment-state-get
          apartment-state-set!
          apartment-state-update!
          current-culture-get
          current-culture-set!
          current-culture-update!
          current-uiculture-get
          current-uiculture-set!
          current-uiculture-update!
          is-thread-pool-thread?
          is-alive?
          is-background?-get
          is-background?-set!
          is-background?-update!
          name-get
          name-set!
          name-update!
          priority-get
          priority-set!
          priority-update!
          thread-state
          execution-context
          managed-thread-id)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Threading.Thread a ...)))))
  (define (is? a) (clr-is System.Threading.Thread a))
  (define (thread? a) (clr-is System.Threading.Thread a))
  (define-method-port
    begin-critical-region
    System.Threading.Thread
    BeginCriticalRegion
    (static: System.Void))
  (define-method-port
    spin-wait
    System.Threading.Thread
    SpinWait
    (static: System.Void System.Int32))
  (define-method-port
    sleep
    System.Threading.Thread
    Sleep
    (static: System.Void System.TimeSpan)
    (static: System.Void System.Int32))
  (define-method-port
    set-data
    System.Threading.Thread
    SetData
    (static: System.Void System.LocalDataStoreSlot System.Object))
  (define-method-port
    get-data
    System.Threading.Thread
    GetData
    (static: System.Object System.LocalDataStoreSlot))
  (define-method-port
    memory-barrier
    System.Threading.Thread
    MemoryBarrier
    (static: System.Void))
  (define-method-port
    resume
    System.Threading.Thread
    Resume
    (System.Void))
  (define-method-port
    end-thread-affinity
    System.Threading.Thread
    EndThreadAffinity
    (static: System.Void))
  (define-method-port
    get-domain
    System.Threading.Thread
    GetDomain
    (static: System.AppDomain))
  (define-method-port
    join
    System.Threading.Thread
    Join
    (System.Boolean System.TimeSpan)
    (System.Boolean System.Int32)
    (System.Void))
  (define-method-port
    try-set-apartment-state?
    System.Threading.Thread
    TrySetApartmentState
    (System.Boolean System.Threading.ApartmentState))
  (define-method-port
    get-compressed-stack
    System.Threading.Thread
    GetCompressedStack
    (System.Threading.CompressedStack))
  (define-method-port
    get-apartment-state
    System.Threading.Thread
    GetApartmentState
    (System.Threading.ApartmentState))
  (define-method-port
    allocate-named-data-slot
    System.Threading.Thread
    AllocateNamedDataSlot
    (static: System.LocalDataStoreSlot System.String))
  (define-method-port
    get-named-data-slot
    System.Threading.Thread
    GetNamedDataSlot
    (static: System.LocalDataStoreSlot System.String))
  (define-method-port
    volatile-read
    System.Threading.Thread
    VolatileRead
    (static: System.UIntPtr System.UIntPtr&)
    (static: System.UInt64 System.UInt64&)
    (static: System.UInt32 System.UInt32&)
    (static: System.UInt16 System.UInt16&)
    (static: System.Single System.Single&)
    (static: System.SByte System.SByte&)
    (static: System.Object System.Object&)
    (static: System.IntPtr System.IntPtr&)
    (static: System.Int64 System.Int64&)
    (static: System.Int32 System.Int32&)
    (static: System.Int16 System.Int16&)
    (static: System.Double System.Double&)
    (static: System.Byte System.Byte&))
  (define-method-port
    reset-abort
    System.Threading.Thread
    ResetAbort
    (static: System.Void))
  (define-method-port
    get-hash-code
    System.Threading.Thread
    GetHashCode
    (System.Int32))
  (define-method-port
    set-compressed-stack
    System.Threading.Thread
    SetCompressedStack
    (System.Void System.Threading.CompressedStack))
  (define-method-port
    allocate-data-slot
    System.Threading.Thread
    AllocateDataSlot
    (static: System.LocalDataStoreSlot))
  (define-method-port
    free-named-data-slot
    System.Threading.Thread
    FreeNamedDataSlot
    (static: System.Void System.String))
  (define-method-port
    set-apartment-state
    System.Threading.Thread
    SetApartmentState
    (System.Void System.Threading.ApartmentState))
  (define-method-port
    begin-thread-affinity
    System.Threading.Thread
    BeginThreadAffinity
    (static: System.Void))
  (define-method-port
    start
    System.Threading.Thread
    Start
    (System.Void System.Object)
    (System.Void))
  (define-method-port
    end-critical-region
    System.Threading.Thread
    EndCriticalRegion
    (static: System.Void))
  (define-method-port
    abort
    System.Threading.Thread
    Abort
    (System.Void System.Object)
    (System.Void))
  (define-method-port
    volatile-write
    System.Threading.Thread
    VolatileWrite
    (static: System.Void System.UIntPtr& System.UIntPtr)
    (static: System.Void System.UInt64& System.UInt64)
    (static: System.Void System.UInt32& System.UInt32)
    (static: System.Void System.UInt16& System.UInt16)
    (static: System.Void System.Single& System.Single)
    (static: System.Void System.SByte& System.SByte)
    (static: System.Void System.Object& System.Object)
    (static: System.Void System.IntPtr& System.IntPtr)
    (static: System.Void System.Int64& System.Int64)
    (static: System.Void System.Int32& System.Int32)
    (static: System.Void System.Int16& System.Int16)
    (static: System.Void System.Double& System.Double)
    (static: System.Void System.Byte& System.Byte))
  (define-method-port
    get-domain-id
    System.Threading.Thread
    GetDomainID
    (static: System.Int32))
  (define-method-port
    suspend
    System.Threading.Thread
    Suspend
    (System.Void))
  (define-method-port
    interrupt
    System.Threading.Thread
    Interrupt
    (System.Void))
  (define-field-port
    current-context
    #f
    #f
    (static: property:)
    System.Threading.Thread
    CurrentContext
    System.Runtime.Remoting.Contexts.Context)
  (define-field-port
    current-principal-get
    current-principal-set!
    current-principal-update!
    (static: property:)
    System.Threading.Thread
    CurrentPrincipal
    System.Security.Principal.IPrincipal)
  (define-field-port
    current-thread
    #f
    #f
    (static: property:)
    System.Threading.Thread
    CurrentThread
    System.Threading.Thread)
  (define-field-port
    apartment-state-get
    apartment-state-set!
    apartment-state-update!
    (property:)
    System.Threading.Thread
    ApartmentState
    System.Threading.ApartmentState)
  (define-field-port
    current-culture-get
    current-culture-set!
    current-culture-update!
    (property:)
    System.Threading.Thread
    CurrentCulture
    System.Globalization.CultureInfo)
  (define-field-port
    current-uiculture-get
    current-uiculture-set!
    current-uiculture-update!
    (property:)
    System.Threading.Thread
    CurrentUICulture
    System.Globalization.CultureInfo)
  (define-field-port
    is-thread-pool-thread?
    #f
    #f
    (property:)
    System.Threading.Thread
    IsThreadPoolThread
    System.Boolean)
  (define-field-port
    is-alive?
    #f
    #f
    (property:)
    System.Threading.Thread
    IsAlive
    System.Boolean)
  (define-field-port
    is-background?-get
    is-background?-set!
    is-background?-update!
    (property:)
    System.Threading.Thread
    IsBackground
    System.Boolean)
  (define-field-port
    name-get
    name-set!
    name-update!
    (property:)
    System.Threading.Thread
    Name
    System.String)
  (define-field-port
    priority-get
    priority-set!
    priority-update!
    (property:)
    System.Threading.Thread
    Priority
    System.Threading.ThreadPriority)
  (define-field-port
    thread-state
    #f
    #f
    (property:)
    System.Threading.Thread
    ThreadState
    System.Threading.ThreadState)
  (define-field-port
    execution-context
    #f
    #f
    (property:)
    System.Threading.Thread
    ExecutionContext
    System.Threading.ExecutionContext)
  (define-field-port
    managed-thread-id
    #f
    #f
    (property:)
    System.Threading.Thread
    ManagedThreadId
    System.Int32))
