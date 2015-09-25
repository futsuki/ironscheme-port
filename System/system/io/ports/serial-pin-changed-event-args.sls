(library (system io ports serial-pin-changed-event-args)
  (export is? serial-pin-changed-event-args? event-type)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.IO.Ports.SerialPinChangedEventArgs a))
  (define (serial-pin-changed-event-args? a)
    (clr-is System.IO.Ports.SerialPinChangedEventArgs a))
  (define-field-port
    event-type
    #f
    #f
    (property:)
    System.IO.Ports.SerialPinChangedEventArgs
    EventType
    System.IO.Ports.SerialPinChange))
