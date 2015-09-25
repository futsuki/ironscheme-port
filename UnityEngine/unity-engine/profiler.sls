(library (unity-engine profiler)
  (export new
          is?
          profiler?
          get-total-unused-reserved-memory
          get-total-reserved-memory
          end-sample
          add-frames-from-file
          get-total-allocated-memory
          get-runtime-memory-size
          begin-sample
          get-mono-used-size
          get-mono-heap-size
          supported?
          log-file-get
          log-file-set!
          log-file-update!
          enable-binary-log?-get
          enable-binary-log?-set!
          enable-binary-log?-update!
          enabled?-get
          enabled?-set!
          enabled?-update!
          max-number-of-samples-per-frame-get
          max-number-of-samples-per-frame-set!
          max-number-of-samples-per-frame-update!
          used-heap-size)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.Profiler a ...)))))
  (define (is? a) (clr-is UnityEngine.Profiler a))
  (define (profiler? a) (clr-is UnityEngine.Profiler a))
  (define-method-port
    get-total-unused-reserved-memory
    UnityEngine.Profiler
    GetTotalUnusedReservedMemory
    (static: System.UInt32))
  (define-method-port
    get-total-reserved-memory
    UnityEngine.Profiler
    GetTotalReservedMemory
    (static: System.UInt32))
  (define-method-port
    end-sample
    UnityEngine.Profiler
    EndSample
    (static: System.Void))
  (define-method-port
    add-frames-from-file
    UnityEngine.Profiler
    AddFramesFromFile
    (static: System.Void System.String))
  (define-method-port
    get-total-allocated-memory
    UnityEngine.Profiler
    GetTotalAllocatedMemory
    (static: System.UInt32))
  (define-method-port
    get-runtime-memory-size
    UnityEngine.Profiler
    GetRuntimeMemorySize
    (static: System.Int32 UnityEngine.Object))
  (define-method-port
    begin-sample
    UnityEngine.Profiler
    BeginSample
    (static: System.Void System.String UnityEngine.Object)
    (static: System.Void System.String))
  (define-method-port
    get-mono-used-size
    UnityEngine.Profiler
    GetMonoUsedSize
    (static: System.UInt32))
  (define-method-port
    get-mono-heap-size
    UnityEngine.Profiler
    GetMonoHeapSize
    (static: System.UInt32))
  (define-field-port
    supported?
    #f
    #f
    (static: property:)
    UnityEngine.Profiler
    supported
    System.Boolean)
  (define-field-port
    log-file-get
    log-file-set!
    log-file-update!
    (static: property:)
    UnityEngine.Profiler
    logFile
    System.String)
  (define-field-port
    enable-binary-log?-get
    enable-binary-log?-set!
    enable-binary-log?-update!
    (static: property:)
    UnityEngine.Profiler
    enableBinaryLog
    System.Boolean)
  (define-field-port
    enabled?-get
    enabled?-set!
    enabled?-update!
    (static: property:)
    UnityEngine.Profiler
    enabled
    System.Boolean)
  (define-field-port
    max-number-of-samples-per-frame-get
    max-number-of-samples-per-frame-set!
    max-number-of-samples-per-frame-update!
    (static: property:)
    UnityEngine.Profiler
    maxNumberOfSamplesPerFrame
    System.Int32)
  (define-field-port
    used-heap-size
    #f
    #f
    (static: property:)
    UnityEngine.Profiler
    usedHeapSize
    System.UInt32))
