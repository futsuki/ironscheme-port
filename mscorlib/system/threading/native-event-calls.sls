(library (system threading native-event-calls)
  (export new
          is?
          native-event-calls?
          close-event-internal
          reset-event-internal?
          open-event-internal
          set-event-internal?
          create-event-internal)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Threading.NativeEventCalls a ...)))))
  (define (is? a) (clr-is System.Threading.NativeEventCalls a))
  (define (native-event-calls? a)
    (clr-is System.Threading.NativeEventCalls a))
  (define-method-port
    close-event-internal
    System.Threading.NativeEventCalls
    CloseEvent_internal
    (static: System.Void System.IntPtr))
  (define-method-port
    reset-event-internal?
    System.Threading.NativeEventCalls
    ResetEvent_internal
    (static: System.Boolean System.IntPtr))
  (define-method-port
    open-event-internal
    System.Threading.NativeEventCalls
    OpenEvent_internal
    (static:
      System.IntPtr
      System.String
      System.Security.AccessControl.EventWaitHandleRights
      System.IO.MonoIOError&))
  (define-method-port
    set-event-internal?
    System.Threading.NativeEventCalls
    SetEvent_internal
    (static: System.Boolean System.IntPtr))
  (define-method-port
    create-event-internal
    System.Threading.NativeEventCalls
    CreateEvent_internal
    (static:
      System.IntPtr
      System.Boolean
      System.Boolean
      System.String
      System.Boolean&)))
