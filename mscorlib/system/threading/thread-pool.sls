(library (system threading thread-pool)
  (export is?
          thread-pool?
          register-wait-for-single-object
          get-available-threads
          bind-handle?
          unsafe-register-wait-for-single-object
          get-max-threads
          get-min-threads
          unsafe-queue-user-work-item?
          set-max-threads?
          set-min-threads?
          queue-user-work-item?
          unsafe-queue-native-overlapped?)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Threading.ThreadPool a))
  (define (thread-pool? a) (clr-is System.Threading.ThreadPool a))
  (define-method-port
    register-wait-for-single-object
    System.Threading.ThreadPool
    RegisterWaitForSingleObject
    (static:
      System.Threading.RegisteredWaitHandle
      System.Threading.WaitHandle
      System.Threading.WaitOrTimerCallback
      System.Object
      System.UInt32
      System.Boolean)
    (static:
      System.Threading.RegisteredWaitHandle
      System.Threading.WaitHandle
      System.Threading.WaitOrTimerCallback
      System.Object
      System.TimeSpan
      System.Boolean)
    (static:
      System.Threading.RegisteredWaitHandle
      System.Threading.WaitHandle
      System.Threading.WaitOrTimerCallback
      System.Object
      System.Int64
      System.Boolean)
    (static:
      System.Threading.RegisteredWaitHandle
      System.Threading.WaitHandle
      System.Threading.WaitOrTimerCallback
      System.Object
      System.Int32
      System.Boolean))
  (define-method-port
    get-available-threads
    System.Threading.ThreadPool
    GetAvailableThreads
    (static: System.Void System.Int32& System.Int32&))
  (define-method-port
    bind-handle?
    System.Threading.ThreadPool
    BindHandle
    (static: System.Boolean System.Runtime.InteropServices.SafeHandle)
    (static: System.Boolean System.IntPtr))
  (define-method-port
    unsafe-register-wait-for-single-object
    System.Threading.ThreadPool
    UnsafeRegisterWaitForSingleObject
    (static:
      System.Threading.RegisteredWaitHandle
      System.Threading.WaitHandle
      System.Threading.WaitOrTimerCallback
      System.Object
      System.UInt32
      System.Boolean)
    (static:
      System.Threading.RegisteredWaitHandle
      System.Threading.WaitHandle
      System.Threading.WaitOrTimerCallback
      System.Object
      System.TimeSpan
      System.Boolean)
    (static:
      System.Threading.RegisteredWaitHandle
      System.Threading.WaitHandle
      System.Threading.WaitOrTimerCallback
      System.Object
      System.Int64
      System.Boolean)
    (static:
      System.Threading.RegisteredWaitHandle
      System.Threading.WaitHandle
      System.Threading.WaitOrTimerCallback
      System.Object
      System.Int32
      System.Boolean))
  (define-method-port
    get-max-threads
    System.Threading.ThreadPool
    GetMaxThreads
    (static: System.Void System.Int32& System.Int32&))
  (define-method-port
    get-min-threads
    System.Threading.ThreadPool
    GetMinThreads
    (static: System.Void System.Int32& System.Int32&))
  (define-method-port
    unsafe-queue-user-work-item?
    System.Threading.ThreadPool
    UnsafeQueueUserWorkItem
    (static:
      System.Boolean
      System.Threading.WaitCallback
      System.Object))
  (define-method-port
    set-max-threads?
    System.Threading.ThreadPool
    SetMaxThreads
    (static: System.Boolean System.Int32 System.Int32))
  (define-method-port
    set-min-threads?
    System.Threading.ThreadPool
    SetMinThreads
    (static: System.Boolean System.Int32 System.Int32))
  (define-method-port
    queue-user-work-item?
    System.Threading.ThreadPool
    QueueUserWorkItem
    (static: System.Boolean System.Threading.WaitCallback System.Object)
    (static: System.Boolean System.Threading.WaitCallback))
  (define-method-port
    unsafe-queue-native-overlapped?
    System.Threading.ThreadPool
    UnsafeQueueNativeOverlapped
    (static: System.Boolean System.Threading.NativeOverlapped*)))
