(library (system threading overlapped)
  (export new
          is?
          overlapped?
          pack
          unsafe-pack
          free
          unpack
          async-result-get
          async-result-set!
          async-result-update!
          event-handle-get
          event-handle-set!
          event-handle-update!
          event-handle-int-ptr-get
          event-handle-int-ptr-set!
          event-handle-int-ptr-update!
          offset-high-get
          offset-high-set!
          offset-high-update!
          offset-low-get
          offset-low-set!
          offset-low-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Threading.Overlapped a ...)))))
  (define (is? a) (clr-is System.Threading.Overlapped a))
  (define (overlapped? a) (clr-is System.Threading.Overlapped a))
  (define-method-port
    pack
    System.Threading.Overlapped
    Pack
    (System.Threading.NativeOverlapped*
      System.Threading.IOCompletionCallback
      System.Object)
    (System.Threading.NativeOverlapped*
      System.Threading.IOCompletionCallback))
  (define-method-port
    unsafe-pack
    System.Threading.Overlapped
    UnsafePack
    (System.Threading.NativeOverlapped*
      System.Threading.IOCompletionCallback
      System.Object)
    (System.Threading.NativeOverlapped*
      System.Threading.IOCompletionCallback))
  (define-method-port
    free
    System.Threading.Overlapped
    Free
    (static: System.Void System.Threading.NativeOverlapped*))
  (define-method-port
    unpack
    System.Threading.Overlapped
    Unpack
    (static:
      System.Threading.Overlapped
      System.Threading.NativeOverlapped*))
  (define-field-port
    async-result-get
    async-result-set!
    async-result-update!
    (property:)
    System.Threading.Overlapped
    AsyncResult
    System.IAsyncResult)
  (define-field-port
    event-handle-get
    event-handle-set!
    event-handle-update!
    (property:)
    System.Threading.Overlapped
    EventHandle
    System.Int32)
  (define-field-port
    event-handle-int-ptr-get
    event-handle-int-ptr-set!
    event-handle-int-ptr-update!
    (property:)
    System.Threading.Overlapped
    EventHandleIntPtr
    System.IntPtr)
  (define-field-port
    offset-high-get
    offset-high-set!
    offset-high-update!
    (property:)
    System.Threading.Overlapped
    OffsetHigh
    System.Int32)
  (define-field-port
    offset-low-get
    offset-low-set!
    offset-low-update!
    (property:)
    System.Threading.Overlapped
    OffsetLow
    System.Int32))
