(library (system threading wait-handle)
  (export is?
          wait-handle?
          wait-all?
          wait-any
          wait-one?
          signal-and-wait?
          close
          wait-timeout
          handle-get
          handle-set!
          handle-update!
          safe-wait-handle-get
          safe-wait-handle-set!
          safe-wait-handle-update!)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Threading.WaitHandle a))
  (define (wait-handle? a) (clr-is System.Threading.WaitHandle a))
  (define-method-port
    wait-all?
    System.Threading.WaitHandle
    WaitAll
    (static:
      System.Boolean
      System.Threading.WaitHandle[]
      System.TimeSpan)
    (static: System.Boolean System.Threading.WaitHandle[] System.Int32)
    (static:
      System.Boolean
      System.Threading.WaitHandle[]
      System.TimeSpan
      System.Boolean)
    (static:
      System.Boolean
      System.Threading.WaitHandle[]
      System.Int32
      System.Boolean)
    (static: System.Boolean System.Threading.WaitHandle[]))
  (define-method-port
    wait-any
    System.Threading.WaitHandle
    WaitAny
    (static:
      System.Int32
      System.Threading.WaitHandle[]
      System.TimeSpan
      System.Boolean)
    (static: System.Int32 System.Threading.WaitHandle[] System.Int32)
    (static: System.Int32 System.Threading.WaitHandle[] System.TimeSpan)
    (static:
      System.Int32
      System.Threading.WaitHandle[]
      System.Int32
      System.Boolean)
    (static: System.Int32 System.Threading.WaitHandle[]))
  (define-method-port
    wait-one?
    System.Threading.WaitHandle
    WaitOne
    (System.Boolean System.TimeSpan System.Boolean)
    (System.Boolean System.TimeSpan)
    (System.Boolean System.Int32)
    (System.Boolean System.Int32 System.Boolean)
    (System.Boolean))
  (define-method-port
    signal-and-wait?
    System.Threading.WaitHandle
    SignalAndWait
    (static:
      System.Boolean
      System.Threading.WaitHandle
      System.Threading.WaitHandle
      System.TimeSpan
      System.Boolean)
    (static:
      System.Boolean
      System.Threading.WaitHandle
      System.Threading.WaitHandle
      System.Int32
      System.Boolean)
    (static:
      System.Boolean
      System.Threading.WaitHandle
      System.Threading.WaitHandle))
  (define-method-port
    close
    System.Threading.WaitHandle
    Close
    (System.Void))
  (define-field-port
    wait-timeout
    #f
    #f
    (static:)
    System.Threading.WaitHandle
    WaitTimeout
    System.Int32)
  (define-field-port
    handle-get
    handle-set!
    handle-update!
    (property:)
    System.Threading.WaitHandle
    Handle
    System.IntPtr)
  (define-field-port
    safe-wait-handle-get
    safe-wait-handle-set!
    safe-wait-handle-update!
    (property:)
    System.Threading.WaitHandle
    SafeWaitHandle
    Microsoft.Win32.SafeHandles.SafeWaitHandle))
