(library (system timers elapsed-event-args)
  (export is? elapsed-event-args? signal-time)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Timers.ElapsedEventArgs a))
  (define (elapsed-event-args? a)
    (clr-is System.Timers.ElapsedEventArgs a))
  (define-field-port
    signal-time
    #f
    #f
    (property:)
    System.Timers.ElapsedEventArgs
    SignalTime
    System.DateTime))
