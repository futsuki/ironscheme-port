(library (system diagnostics data-received-event-args)
  (export is? data-received-event-args? data)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Diagnostics.DataReceivedEventArgs a))
  (define (data-received-event-args? a)
    (clr-is System.Diagnostics.DataReceivedEventArgs a))
  (define-field-port
    data
    #f
    #f
    (property:)
    System.Diagnostics.DataReceivedEventArgs
    Data
    System.String))
