(library (system io ports serial-error-received-event-args)
  (export is? serial-error-received-event-args? event-type)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.IO.Ports.SerialErrorReceivedEventArgs a))
  (define (serial-error-received-event-args? a)
    (clr-is System.IO.Ports.SerialErrorReceivedEventArgs a))
  (define-field-port
    event-type
    #f
    #f
    (property:)
    System.IO.Ports.SerialErrorReceivedEventArgs
    EventType
    System.IO.Ports.SerialError))
