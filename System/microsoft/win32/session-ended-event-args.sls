(library (microsoft win32 session-ended-event-args)
  (export new is? session-ended-event-args? reason)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Microsoft.Win32.SessionEndedEventArgs a ...)))))
  (define (is? a) (clr-is Microsoft.Win32.SessionEndedEventArgs a))
  (define (session-ended-event-args? a)
    (clr-is Microsoft.Win32.SessionEndedEventArgs a))
  (define-field-port
    reason
    #f
    #f
    (property:)
    Microsoft.Win32.SessionEndedEventArgs
    Reason
    Microsoft.Win32.SessionEndReasons))
