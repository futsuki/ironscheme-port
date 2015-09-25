(library (microsoft win32 timer-elapsed-event-args)
  (export new is? timer-elapsed-event-args? timer-id)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Microsoft.Win32.TimerElapsedEventArgs a ...)))))
  (define (is? a) (clr-is Microsoft.Win32.TimerElapsedEventArgs a))
  (define (timer-elapsed-event-args? a)
    (clr-is Microsoft.Win32.TimerElapsedEventArgs a))
  (define-field-port
    timer-id
    #f
    #f
    (property:)
    Microsoft.Win32.TimerElapsedEventArgs
    TimerId
    System.IntPtr))
