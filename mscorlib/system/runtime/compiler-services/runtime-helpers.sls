(library (system runtime compiler-services runtime-helpers)
  (export is?
          runtime-helpers?
          get-hash-code
          run-class-constructor
          execute-code-with-guaranteed-cleanup
          prepare-constrained-regions
          initialize-array
          probe-for-sufficient-stack
          prepare-delegate
          prepare-constrained-regions-no-op
          prepare-method
          run-module-constructor
          get-object-value
          equals?
          offset-to-string-data)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Runtime.CompilerServices.RuntimeHelpers a))
  (define (runtime-helpers? a)
    (clr-is System.Runtime.CompilerServices.RuntimeHelpers a))
  (define-method-port
    get-hash-code
    System.Runtime.CompilerServices.RuntimeHelpers
    GetHashCode
    (static: System.Int32 System.Object))
  (define-method-port
    run-class-constructor
    System.Runtime.CompilerServices.RuntimeHelpers
    RunClassConstructor
    (static: System.Void System.RuntimeTypeHandle))
  (define-method-port
    execute-code-with-guaranteed-cleanup
    System.Runtime.CompilerServices.RuntimeHelpers
    ExecuteCodeWithGuaranteedCleanup
    (static:
      System.Void
      System.Runtime.CompilerServices.RuntimeHelpers+TryCode
      System.Runtime.CompilerServices.RuntimeHelpers+CleanupCode
      System.Object))
  (define-method-port
    prepare-constrained-regions
    System.Runtime.CompilerServices.RuntimeHelpers
    PrepareConstrainedRegions
    (static: System.Void))
  (define-method-port
    initialize-array
    System.Runtime.CompilerServices.RuntimeHelpers
    InitializeArray
    (static: System.Void System.Array System.RuntimeFieldHandle))
  (define-method-port
    probe-for-sufficient-stack
    System.Runtime.CompilerServices.RuntimeHelpers
    ProbeForSufficientStack
    (static: System.Void))
  (define-method-port
    prepare-delegate
    System.Runtime.CompilerServices.RuntimeHelpers
    PrepareDelegate
    (static: System.Void System.Delegate))
  (define-method-port
    prepare-constrained-regions-no-op
    System.Runtime.CompilerServices.RuntimeHelpers
    PrepareConstrainedRegionsNoOP
    (static: System.Void))
  (define-method-port
    prepare-method
    System.Runtime.CompilerServices.RuntimeHelpers
    PrepareMethod
    (static:
      System.Void
      System.RuntimeMethodHandle
      System.RuntimeTypeHandle[])
    (static: System.Void System.RuntimeMethodHandle))
  (define-method-port
    run-module-constructor
    System.Runtime.CompilerServices.RuntimeHelpers
    RunModuleConstructor
    (static: System.Void System.IntPtr)
    (static: System.Void System.ModuleHandle))
  (define-method-port
    get-object-value
    System.Runtime.CompilerServices.RuntimeHelpers
    GetObjectValue
    (static: System.Object System.Object))
  (define-method-port
    equals?
    System.Runtime.CompilerServices.RuntimeHelpers
    Equals
    (static: System.Boolean System.Object System.Object))
  (define-field-port
    offset-to-string-data
    #f
    #f
    (static: property:)
    System.Runtime.CompilerServices.RuntimeHelpers
    OffsetToStringData
    System.Int32))
