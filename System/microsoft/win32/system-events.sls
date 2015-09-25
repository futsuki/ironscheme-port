(library (microsoft win32 system-events)
  (export is?
          system-events?
          invoke-on-events-thread
          create-timer
          kill-timer)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is Microsoft.Win32.SystemEvents a))
  (define (system-events? a) (clr-is Microsoft.Win32.SystemEvents a))
  (define-method-port
    invoke-on-events-thread
    Microsoft.Win32.SystemEvents
    InvokeOnEventsThread
    (static: System.Void System.Delegate))
  (define-method-port
    create-timer
    Microsoft.Win32.SystemEvents
    CreateTimer
    (static: System.IntPtr System.Int32))
  (define-method-port
    kill-timer
    Microsoft.Win32.SystemEvents
    KillTimer
    (static: System.Void System.IntPtr)))
