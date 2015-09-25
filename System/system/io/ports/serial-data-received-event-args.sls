(library (system io ports serial-data-received-event-args)
  (export is? serial-data-received-event-args? event-type)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.IO.Ports.SerialDataReceivedEventArgs a))
  (define (serial-data-received-event-args? a)
    (clr-is System.IO.Ports.SerialDataReceivedEventArgs a))
  (define-field-port
    event-type
    #f
    #f
    (property:)
    System.IO.Ports.SerialDataReceivedEventArgs
    EventType
    System.IO.Ports.SerialData))
