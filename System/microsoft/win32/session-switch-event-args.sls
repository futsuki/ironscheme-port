(library (microsoft win32 session-switch-event-args)
  (export new is? session-switch-event-args? reason)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Microsoft.Win32.SessionSwitchEventArgs a ...)))))
  (define (is? a) (clr-is Microsoft.Win32.SessionSwitchEventArgs a))
  (define (session-switch-event-args? a)
    (clr-is Microsoft.Win32.SessionSwitchEventArgs a))
  (define-field-port
    reason
    #f
    #f
    (property:)
    Microsoft.Win32.SessionSwitchEventArgs
    Reason
    Microsoft.Win32.SessionSwitchReason))
